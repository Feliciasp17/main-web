<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Tim;
use App\Peserta;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Pelanggaran;
use App\ListPelanggaran;
use Auth;
use DB;
use App\Exports\PelanggaranExport;
use Maatwebsite\Excel\Facades\Excel;

class MainController extends Controller
{
  public function index() {
	$this->authorize('PintuPanitia');
	$count1 = Tim::where('status', 'pending')->orWhere('status_file', 'pending')->where('id', '>=', 1)->where('id', '<=', 51)->count();
	$count2 = Tim::where('status', 'confirmed')->where('status_file', 'confirmed')->where('id', '>=', 1)->where('id', '<=', 51)->count();
	$count3 = Tim::where('id', '>=', 1)->where('id', '<=', 51)->count();
	return view('admin.dashboard', compact('count1', 'count2', 'count3'));
  }
  
  public function adduser() {
    $this->authorize('PintuMimin');
    $tim = Tim::all();
    return view('admin.addUser', compact('tim'));
  }
  
    public function lihatPeserta() {
       $this->authorize('PintuPanitia');
        $datapeserta = Tim::orderBy('created_at', 'asc')->where('id', '>=', 1)->where('id', '<=', 51)->get();
        return view('admin.peserta',compact('datapeserta'));
    }

    public function detailPeserta(Request $request) {
        $this->authorize('PintuPanitia');
        $tim = Tim::where('id',$request->id)->first();
		if(Auth::user()->role != "keamanan"){
		    $detaildata = Peserta::where('tim_id',$request->id)->get();
    		return response()->json(array(
    			'status'=>'oke',
    			'msg'=>view('admin.detailPeserta', compact('tim', 'detaildata'))->render(),
    		),200);
		} else {
		    $detaildata = ListPelanggaran::where('tim_id',$request->id)->get();
		    return response()->json(array(
    			'status'=>'oke',
    			'msg'=>view('admin.detailPesertaKeamanan', compact('tim', 'detaildata'))->render(),
    		),200);
		}
    }

	public function detailPeserta2(Request $request) {
		$this->authorize('PintuPanitia');
		$tim = Tim::where('id',$request->id)->first();
		
		$detaildata = ListPelanggaran::where('tim_id',$request->id)->get();
		return response()->json(array(
			'status'=>'oke',
			'msg'=>view('admin.detailPesertaKeamanan', compact('tim', 'detaildata'))->render(),
		),200);
	}
    
    public function save_form(Request $data){
		try {
				User::create([
					'name' => $data['name'],
                    'email' => $data['email'],
                    'role' => $data['role'],
                    'password' => Hash::make($data['password']),
				]);			
            return redirect()->route('regis.add')->with('pesan', 'Selamat panitia telah berhasil didaftarkan');
		} catch (\PDOException $e) {
            return redirect()->route('regis.add')->with('pesan', 'Mohon maaf panitia belum terdaftar, mohon melakukan registrasi kembali. Pastikan kembali semua data sudah terisi dan sesuai ketentuan. Terima kasih.');
		}
	}
	
	public function confirm($id, $status){
		$this->authorize('PintuPubreg');
		$tim = Tim::where('id',$id)->first();
		if ($status == 'zip') {
			$tim->status_file = 'confirmed';
		} else {
			$tim->status = 'confirmed';
		}
		$tim->save();
		return redirect()->back()->with('success', 'Status berhasil di-update !');
	}
	
	public function password_generate(Request $data){
		$this->authorize('PintuMimin');
	    $tim = Tim::find($data->tim);
	    $user = User::find($tim->users_id);
	    $pass_mentah = $this->generatePassword();
	    $user->password = Hash::make($pass_mentah);
	    $user->save();
	    return redirect()->back()->with('pesan', 'Password baru : '.$pass_mentah.' Email tim : '.$user->email.' Nama tim : '.$tim->nama);
	}

	public function addpelanggaran(){
		$this->authorize('PintuKeamanan');
		$pelanggarans = Pelanggaran::orderBy('jenis', 'asc')->get();
		$tims = Tim::all();
		
		return view('admin.addPelanggaran', compact('tims','pelanggarans'));
	}

	public function savepelanggaran(Request $request){
		$this->authorize('PintuKeamanan');
		try {
			$user = Auth::user()->id;
			$pelanggaran_id = 0;

			if ($request['pelanggaran'] == "custom") {
				$pelanggaran = new Pelanggaran();
				$pelanggaran->pelanggaran = $request['new_pelanggaran'];
				$pelanggaran->jenis = $request['new_pelanggaran_type'];
				$pelanggaran->save();
				$pelanggaran_id = $pelanggaran->id;
			}
			else
				$pelanggaran_id = $request['pelanggaran'];

            DB::table('list_pelanggaran')->insert([
                    'tim_id' => $request['tim'],
					'anggota_id' => $request['anggota'],
    				'pelanggaran_id' => $pelanggaran_id,
    				'user_id_inputer' => $user,
					'keterangan' => $request['keterangan'],
    				'created_at' => $request['dtime'],
    				'updated_at' => now(),
                ]);
			
			return redirect()->back()->with('success', 'Pelanggaran berhasil dimasukkan !');
		} catch (\Throwable $th) {
			return redirect()->back()->with('error', 'Pelanggaran gagal dimasukkan ! Silahkan coba lagi.');
		}
	}
	
	public function generatePassword(){
      	return "CEG2021-".date('YmdHis').rand(1000, 9999);
  	}

	public function get_anggota(Request $request){
		$this->authorize('PintuKeamanan');
		$id=$request->get("id");
		$anggota=Peserta::where('tim_id', $id)->get();
		$html= "<option value=''>--Pilih  Anggota--</option>";
		foreach ($anggota as $value) {
			$html.="<option value='".$value->id."'>".ucfirst($value->role)." - ".$value->nama."</option>";
		}
        return response()->json(array(
            'msg'=>$html,
        ),200);
	}	  
    
	public function create_pelanggaran() {
		$this->authorize('PintuKeamanan');
		
		return response()->json(array(
			'status'=>'oke',
			'msg'=>view('admin.newPelanggaran')->render(),
		),200);
	}

	public function view_rekapan(){
		$this->authorize('PintuPanitia');

		$pelanggarans = Pelanggaran::orderBy('jenis', 'asc')->get();
		$tims = Tim::all();
		
		return view('admin.rekapan', compact('tims', 'pelanggarans'));
	}

	public function export_pelanggaran(Request $request){
		$filename = "pelanggaran_".now().".xlsx";
		return Excel::download(new PelanggaranExport($request->sortby, $request->tim, $request->tipe, $request->pelanggaran, $request->start, $request->end), $filename);
	}
}
  