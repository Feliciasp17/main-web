<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKabKotaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kab_kota', function (Blueprint $table) {
			$table->id();
			$table->string('nama');
			$table->unsignedBigInteger('provinsi_id');
			$table->foreign('provinsi_id')->references('id')->on('provinsi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kab_kota');
    }
}
