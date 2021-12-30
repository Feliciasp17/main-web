<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListPelanggaran extends Model
{
    protected $table="list_pelanggaran";
	public $timestamps = false;

	protected $fillable = [
        'tim_id', 'anggota_id', 'pelanggaran_id', 'user_id_inputer', 'keterangan', 'created_at'
    ];

    public function pelanggaran(){
		return $this->belongsTo('App\Pelanggaran', 'pelanggaran_id', 'id');
	}
}
