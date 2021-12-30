<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KabKota extends Model
{
	protected $table="kab_kota";
	
	public function provinsi(){
		return $this->belongsTo('App\Provinsi', 'provinsi_id', 'id');
	}
}
