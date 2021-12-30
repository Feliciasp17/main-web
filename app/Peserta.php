<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Peserta extends Model
{
	protected $table="peserta";
	
	public function tim(){
		return $this->belongsTo('App\Tim', 'tim_id', 'id');
	}
}
