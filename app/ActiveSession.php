<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActiveSession extends Model
{
    protected $table="active_session";
	public $timestamps = false;
}
