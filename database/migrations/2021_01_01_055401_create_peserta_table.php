<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesertaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peserta', function (Blueprint $table) {
			$table->id();
			$table->unsignedBigInteger('tim_id');
			$table->foreign('tim_id')->references('id')->on('tim');
			$table->enum('role', ['ketua', 'anggota']);
			$table->string('nama');
			$table->string('whatsapp')->nullable();
			$table->string('line')->nullable();
			$table->string('email')->unique();
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
        Schema::dropIfExists('peserta');
    }
}
