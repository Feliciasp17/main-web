<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSekolahToTimTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tim', function (Blueprint $table) {
			$table->text('sekolah')->after('nama');
			$table->unsignedBigInteger('kab_kota_id')->after('status');
			$table->foreign('kab_kota_id')->references('id')->on('kab_kota');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tim', function (Blueprint $table) {
            //
        });
    }
}
