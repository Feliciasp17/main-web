<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Tim;
use App\Peserta;
use App\Artikel;
use Mail;
use App\Mail\SendAccountInfoPeserta;
use App\ActiveSession;
use App\Link;
use Carbon\Carbon;
use App\Pelanggaran;
use App\ListPelanggaran;

class MainController extends Controller
{
    // public function test() {
    //      Mail::to('anasthasyaaverina@gmail.com')->send(new SendAccountInfoPeserta('email', 'password', 'namatim'));
    // }
    
	public function coming_soon_page() {
		return view('comingsoon');
	}

	public function home_page() {
		return view('welcome');
	}

	public function about_us_page() {
		return view('aboutus');
	}

	public function faq_page() {
		return view('faq');
	}

    public function regis_page(){
		return view('registration');
	}

	public function announcement_page(){
		if (Auth::user()->tim->status_lomba == 'peserta') {
			$article = Artikel::where('status', 'active')->where('view_role', 'all')->orderBy('created_at', 'desc')->paginate(5);
		} elseif (Auth::user()->tim->status_lomba == 'semifinal') {
			$article = Artikel::where('status', 'active')->whereIn('view_role', ['all', 'semifinal'])->orderBy('created_at', 'desc')->paginate(5);
		} elseif (Auth::user()->tim->status_lomba == 'final') {
			$article = Artikel::where('status', 'active')->orderBy('created_at', 'desc')->paginate(5);
		}
	   
		return view('announcement', compact('article'));
	}

	public function article_page($id){
	    $article = Artikel::findOrFail($id);
	    if($article->status != "active"){
	        return redirect(route('announcement'));
	    }
		if (Auth::user()->tim->status_lomba == 'peserta') {
			if ($article->view_role != "all") {
				return redirect(route('announcement'));
			}
		} elseif (Auth::user()->tim->status_lomba == 'semifinal') {
			if ($article->view_role == "final") {
				return redirect(route('announcement'));
			}
		}
		return view('article', compact('article'));
	}

	public function profile_page(){
		$user = Auth::user();
		if ($user->role == 'peserta') {
			$tim = Tim::where('nama', $user->name)->where('users_id', $user->id)->first();
			$pesertas = Peserta::where('tim_id', $tim->id)->get();
			
			$status = 'belum';
			if ($tim->status == 'confirmed') {
				$status = 'lunas';
			}

			if ($tim->tiga_tim != null) {
				$tims = Tim::where('tiga_tim', $tim->tiga_tim)->get();

				foreach ($tims as $t) {
					if ($tim->status == 'confirmed') {
						$status = 'lunas';
					}
				}
			}

			$listPelanggaran = ListPelanggaran::where('tim_id', $tim->id)->get();
			$daftarPelanggaran = Pelanggaran::all();

			$pelanggarans = array();

			foreach ($listPelanggaran as $key) {
				foreach ($daftarPelanggaran as $plg) {
					if ($key->pelanggaran_id == $plg->id) {
						$pelanggarannya = array(
							'pelanggaran' => $plg->pelanggaran,
							'jenis' => $plg->jenis,
							'created_at' => $key->created_at
						);
						array_push($pelanggarans, $pelanggarannya);
					}
				}
			}

			return view('profile', compact('tim', 'pesertas', 'status','pelanggarans'));
		} else {
			return view('profile');
		}
	}

	public function active_session()
	{
		if(Auth::user()->tim->status_peserta == 'inactive'){
	        return redirect('/');
	    }
		$user = Auth::user();
		$tim = Tim::where('nama',$user->name)->where('users_id', $user->id)->first();

		$sekarang = Carbon::now();
		//aktif
		$sessions = ActiveSession::where('mulai','<=',$sekarang)->where('selesai','>=',$sekarang)->first();
		//dd($sekarang);
		//sudah absen?
		$kepastian = false;

		if($sessions == null)
		{
			$sessions = ActiveSession::where('tipe',"kosong")->first();
			$link = "";
		}
		else{
			$link = Link::where('session_id',$sessions->id)->get();
			
			if($sessions->tipe == 'absen')
			{
			
				if(strpos($sessions->kegiatan,'tm') !== false)
				{
					if($tim->absen_tm != null)
					{
						$kepastian = true;
					}
				}
				else if(strpos($sessions->kegiatan,'1') !== false)
				{
					if($tim->absen_day1 != null)
					{
						$kepastian = true;
					}
				}
				else if(strpos($sessions->kegiatan,'2') !== false)
				{
					if($tim->absen_day2  != null)
					{
						$kepastian = true;
					}
				}
				else if(strpos($sessions->kegiatan,'3') !== false)
				{
					if($tim->absen_day3  != null)
					{
						$kepastian = true;
					}
				}
			} elseif ($sessions->tipe == 'semifinal') {
				$link = Link::where('tipe', 'semifinal')->get();
			} elseif ($sessions->tipe == 'rally') {
				$status_rally = ActiveSession::where('kegiatan', 'status rally')->first();
				$status_gambes = ActiveSession::where('kegiatan', 'status gambes')->first();
				return view('activesession', compact('user','link','kepastian','sessions','sekarang', 'status_rally', 'status_gambes'));
			}
		}
		
		return view('activesession', compact('user','link','kepastian','sessions','sekarang'));
		// $sessions = ActiveSession::all();

		// return view('activesession', compact('sessions'));
	}
	public function absen(Request $request)
	{
		$idUser = $request->get('idUser');
		$idSesi = $request->get('idSesi');
		$sessions = ActiveSession::where('id',$idSesi)->first();
		$sekarang = Carbon::now();
		$tim = Tim::where('users_id', $idUser)->first();

			if(strpos($sessions->kegiatan,'tm') !== false)
			{
				$tim->absen_tm = $sekarang;
				$tim->save();
			}
			else if(strpos($sessions->kegiatan,'1') !== false)
			{
				$tim->absen_day1 = $sekarang;
				$tim->save();
			}
			else if(strpos($sessions->kegiatan,'2') !== false)
			{
				$tim->absen_day2 = $sekarang;
				$tim->save();
			}
			else if(strpos($sessions->kegiatan,'3') !== false)
			{
				$tim->absen_day3 = $sekarang;
				$tim->save();
			}
			return response()->json(array(
				'status'=>'sudah',
				'msg'=>'Absensi Berhasil!'
			),200);
	}
}
