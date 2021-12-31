<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/test', 'MainController@test');

Route::get('/', 'MainController@home_page');

Route::get('/aboutus', 'MainController@about_us_page');

Route::get('/registration', 'MainController@regis_page')->name('registration');
Route::get('/registration/{status}', 'RegistrationController@show_form')->name('registration.form');
Route::post('/registration/save', 'RegistrationController@save_form')->name('registration.save');
Route::post('/registration/get_kota', 'RegistrationController@get_kota')->name('registration.get_kota');
Route::post('/registration/cek_nama_tim', 'RegistrationController@cek_nama_tim')->name('registration.cek_nama_tim');
Route::post('/registration/bukti', 'RegistrationController@upload_bukti')->name('registration.bukti');
Route::post('/registration/file', 'RegistrationController@upload_file')->name('registration.file');

Route::get('/comingsoon', 'MainController@coming_soon_page');

Route::get('/FAQ', 'MainController@faq_page');

Route::middleware(['auth'])->group(function(){
	Route::resource('/admin/dashboard','Admin\MainController');
	Route::get('/admin/adduser','Admin\MainController@adduser')->name('regis.add');
	Route::get('/admin/add-pelanggaran','Admin\MainController@addpelanggaran')->name('pelanggaran.add');
	Route::post('/admin/save-pelanggaran','Admin\MainController@savepelanggaran')->name('pelanggaran.save');
	Route::post('/admin/get_anggota','Admin\MainController@get_anggota')->name('pelanggaran.get_anggota');
	Route::post('/admin/get_pelanggaran_by_type','Admin\MainController@get_pelanggaran_by_type')->name('pelanggaran.get_pelanggaran_by_type');
	Route::post('/admin/create_pelanggaran','Admin\MainController@create_pelanggaran')->name('pelanggaran.create_pelanggaran');
	Route::get('/admin/peserta', 'Admin\MainController@lihatpeserta')->name('admin.peserta');
	Route::post('/admin/detailpeserta/', 'Admin\MainController@detailpeserta')->name('admin.detailpeserta');
	Route::post('/admin/detailpeserta2/', 'Admin\MainController@detailpeserta2')->name('admin.detailpeserta2');
	Route::post('/admin/confirm/{id}/{stat}', 'Admin\MainController@confirm')->name('admin.confirm');
	Route::post('/admin/peserta/edit/{id}', 'Admin\MainController@editpeserta')->name('admin.editpeserta');
	Route::post('/regis/save', 'Admin\MainController@save_form')->name('regis.save');
	Route::post('/password/generate', 'Admin\MainController@password_generate')->name('password.generate');
	Route::get('/admin/rekapan','Admin\MainController@view_rekapan')->name('admin.rekapan');
	Route::get('/admin/rekapan/export', 'Admin\MainController@export_pelanggaran')->name('admin.export');

	Route::get('/announcement', 'MainController@announcement_page')->name('announcement');
	Route::get('/profile', 'MainController@profile_page')->name('profile');
	Route::get('/announcement/article/{id}', 'MainController@article_page')->name('article_page');
	Route::get('/activesession', 'MainController@active_session');
	Route::post('/activesession', 'MainController@absen')->name('absen');
});