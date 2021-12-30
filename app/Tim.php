<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tim extends Model
{
	protected $table="tim";
	
	public function kab_kota(){
		return $this->belongsTo('App\KabKota', 'kab_kota_id', 'id');
	}

	public function user(){
		return $this->belongsTo('App\User', 'users_id', 'id');
	}

	public function file_zip(){
		return $this->belongsTo('App\FileZip', 'file_zip_id', 'id');
	}

	public function file_bukti(){
		return $this->belongsTo('App\FileBukti', 'file_bukti_id', 'id');
	}
}
