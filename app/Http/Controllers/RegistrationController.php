<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Provinsi;
use App\KabKota;
use App\Tim;
use App\User;
use App\Peserta;
use App\FileZip;
use App\FileBukti;
use Mail;
use App\Mail\SendAccountInfoPeserta;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegistrationController extends Controller
{
    public function show_form($status){
		if ($status == '1tim' || $status == '3tim') {
			$provinsi = Provinsi::all();
			$kota = KabKota::where('provinsi_id', 6)->get();
			return view('regisform', compact('status', 'provinsi', 'kota'));
		} else {
			return back();
		}
	}

	public function generatePassword(){
      return "CEG2021-".date('YmdHis').rand(1000, 9999);
  	}

	public function save_form(Request $request){
		if ($request->get('stat') == '1tim'){
			$request->validate([
				'zip' => 'required|mimes:zip',
			]);
			for ($j=1; $j < 4; $j++) { 
				$validator = Validator::make($request->all(), [
					'p'.$j.'whatsapp' => 'required|starts_with:08|digits_between:10,13|min:0',
				]);
				if ($validator->fails()) {
					return redirect()->back()->withInput($request->except('p'.$j.'whatsapp'))->with('error', 'Mohon masukkan nomor Whatsapp yang benar. Diawali dengan 08, minimal 10 digit, dan maksimal 13 digit.');
				}
			}
			$password = $this->generatePassword();
			
			User::create([
				'name' => $request->get('tname'),
				'email' => $request->get('p1email'),
				'password' => Hash::make($password),
				'role' => 'peserta',
			]);

			$ext = $request->file('zip')->getClientOriginalExtension();
			$fileName = 'CEG_2021_'.$request->get('tname').".".$ext;
			$path = $request->file('zip')->move('file_zip', $fileName);
			$file_zip = new FileZip();
			$file_zip->nama = $fileName;
			$file_zip->save();
			
			$tim = new Tim();
			$tim->nama = $request->get('tname');
			$tim->sekolah = $request->get('sname');
			$tim->alamat_sekolah = $request->get('saddress');
			$tim->tiga_tim = null;
			$tim->status = 'pending';
			$tim->status_file = 'pending';
			$tim->kab_kota_id = $request->get('city');
			$user = User::where('name', $request->get('tname'))->where('email', $request->get('p1email'))->first();
			$tim->users_id = $user->id;
			$zip = FileZip::where('nama', $fileName)->first();
			$tim->file_zip_id = $zip->id;
			$tim->save();
			$get_tim = Tim::where('nama', $request->get('tname'))->where('sekolah', $request->get('sname'))->where('users_id', $user->id)->first();

			for ($i=1; $i < 4; $i++) { 
				$peserta = new Peserta();
				$peserta->tim_id = $get_tim->id;
				if($i == 1) {
					$peserta->role = 'ketua';
				}
				else {
					$peserta->role = 'anggota';
					
				}
				$peserta->nama = $request->get('p'.$i.'name');
				$peserta->whatsapp = $request->get('p'.$i.'whatsapp');
				$peserta->line = $request->get('p'.$i.'line');
				$peserta->email = $request->get('p'.$i.'email');
				$peserta->alamat = $request->get('p'.$i.'address');
				$peserta->save();
			}
			Mail::to($request->get('p1email'))->send(new SendAccountInfoPeserta($user->email, $password, $tim->nama));
		}
		else {
			for ($i=1; $i < 4; $i++) { 
				$request->validate([
					'zip'.$i => 'required|mimes:zip',
				]);
				for ($j=1; $j < 4; $j++) { 
					$validator = Validator::make($request->all(), [
						'p'.$j.'whatsapp'.$i => 'required|starts_with:08|digits_between:10,13|min:0',
					]);
					if ($validator->fails()) {
						return redirect()->back()->withInput($request->except('p'.$i.'whatsapp'))->with('error', 'Mohon masukkan nomor Whatsapp yang benar. Diawali dengan 08, minimal 10 digit, dan maksimal 13 digit.');
					}
				}
			}
			$arr_pass = array();

			for ($i=1; $i < 4; $i++) { 
				$ext = $request->file('zip'.$i)->getClientOriginalExtension();
				$fileName = 'CEG_2021_'.$request->get('tname'.$i).".".$ext;
				$path = $request->file('zip'.$i)->move('file_zip', $fileName);
				$file_zip = new FileZip();
				$file_zip->nama = $fileName;
				$file_zip->save();

				$password = $this->generatePassword();
				$arr_pass[$i] = $password;
				User::create([
					'name' => $request->get('tname'.$i),
					'email' => $request->get('p1email'.$i),
					'password' => Hash::make($password),
					'role' => 'peserta',
				]);
				
				$tim = new Tim();
				$tim->nama = $request->get('tname'.$i);
				$tim->sekolah = $request->get('sname');
				$tim->alamat_sekolah = $request->get('saddress');
				$tim->tiga_tim = 0;
				$tim->status = 'pending';
				$tim->status_file = 'pending';
				$tim->kab_kota_id = $request->get('city');
				$user = User::where('name', $request->get('tname'.$i))->where('email', $request->get('p1email'.$i))->first();
				$tim->users_id = $user->id;
				$zip = FileZip::where('nama', $fileName)->first();
				$tim->file_zip_id = $zip->id;
				$tim->save();
				$get_tim = Tim::where('nama', $request->get('tname'.$i))->where('sekolah', $request->get('sname'))->where('users_id', $user->id)->first();

				if ($i == 1) {
					$tim_id_1 = $get_tim->id;
				}
				elseif($i == 2){
					$tim_id_2 = $get_tim->id;
				}
				elseif($i == 3){
					$tim_id_3 = $get_tim->id;
				}

				for ($j=1; $j < 4; $j++) { 
					$peserta = new Peserta();
					$peserta->tim_id = $get_tim->id;
					if($j == 1) {
						$peserta->role = 'ketua';
					}
					else {
						$peserta->role = 'anggota';
					}
					$peserta->nama = $request->get('p'.$j.'name'.$i);
					$peserta->whatsapp = $request->get('p'.$j.'whatsapp'.$i);
					$peserta->line = $request->get('p'.$j.'line'.$i);
					$peserta->email = $request->get('p'.$j.'email'.$i);
					$peserta->alamat = $request->get('p'.$j.'address'.$i);
					$peserta->save();
				}
			}

			$team = Tim::where('id', $tim_id_1)->first();
			$team->tiga_tim = $tim_id_1.'-'.$tim_id_2.'-'.$tim_id_3;
			$team->save();
			$team = Tim::where('id', $tim_id_2)->first();
			$team->tiga_tim = $tim_id_1.'-'.$tim_id_2.'-'.$tim_id_3;
			$team->save();
			$team = Tim::where('id', $tim_id_3)->first();
			$team->tiga_tim = $tim_id_1.'-'.$tim_id_2.'-'.$tim_id_3;
			$team->save();

// 			set_time_limit(3600);

// 			Mail::to($request->get('p1email1'))->send(new SendAccountInfoPeserta($request->get('p1email1'), $arr_pass[1], $request->get('tname1')));
// 			Mail::to($request->get('p1email2'))->send(new SendAccountInfoPeserta($request->get('p1email2'), $arr_pass[2], $request->get('tname2')));
// 			Mail::to($request->get('p1email3'))->send(new SendAccountInfoPeserta($request->get('p1email3'), $arr_pass[3], $request->get('tname3')));
		}

        return redirect()->route('registration')->with('success', 'Data-data anda telah tersimpan, silakan mengecek username dan password website yang dikirimkan pada email ketua kelompok. Apabila email belum terkirim dalam waktu 1 hari, segera hubungi si.cegubaya@gmail.com. Terima kasih');
	}

	public function get_kota(Request $request){
		$id=$request->get("id");
		$kota=KabKota::where('provinsi_id', $id)->get();
		$html="";
		foreach ($kota as $value) {
			$html.="<option value='".$value->id."'>".$value->nama."</option>";
		}
        return response()->json(array(
            'msg'=>$html,
        ),200);
	}

	public function cek_nama_tim(Request $request){
		$nama=$request->get("nama");
		$nama_tim=Tim::where('nama', $nama)->get();
		if (count($nama_tim) > 0) {
			$status = 'kembar';
		} else {
			$status = 'aman';
		}
        return response()->json(array(
            'status'=>$status,
        ),200);
	}

	public function upload_bukti(Request $request){
		
		$request->validate([
			'bukti' => 'required|mimes:jpg,jpeg',
		]);

		$fileName = $request->file('bukti')->getClientOriginalName();
		$path = $request->file('bukti')->move('file_bukti', $fileName);
		$file_bukti = new FileBukti();
		$file_bukti->nama = $fileName;
		$file_bukti->save();

		$tim_id = $request->get('timid');
		$tim = Tim::where('id', $tim_id)->first();

		if ($tim->tiga_tim != null) {
			$tims = Tim::where('tiga_tim', $tim->tiga_tim)->get();

			foreach ($tims as $t) {
				$t->file_bukti_id = $file_bukti->id;
				$t->save();
			}
		}
		else {
			$tim->file_bukti_id = $file_bukti->id;
			$tim->save();
		}

		return redirect()->route('profile')->with('success', 'Berhasil meng-upload file bukti pembayaran. Mohon menunggu konfirmasi dari panitia. Terima kasih');
	}

	public function upload_file(Request $request){

		$request->validate([
			'zip' => 'required|mimes:zip',
		]);

		$tim = Tim::where('id', $request->get('timidf'))->first();
		$ext = $request->file('zip')->getClientOriginalExtension();
		$fileName = 'CEG_2021_'.$tim->nama.".".$ext;
		$path = $request->file('zip')->move('file_zip', $fileName);
		$file_zip = new FileZip();
		$file_zip->nama = $fileName;
		$file_zip->save();
		$tim->file_zip_id = $file_zip->id;
		$tim->save();
		
		return redirect()->route('profile')->with('success', 'Berhasil meng-upload file berkas pendaftaran. Mohon menunggu konfirmasi dari panitia. Terima kasih');
	}
}
