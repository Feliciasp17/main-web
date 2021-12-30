<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTimTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tim', function (Blueprint $table) {
			$table->id();
			$table->string('nama')->unique();
			$table->integer('tiga_tim');
			$table->enum('status', ['pending', 'confirmed']);
			$table->unsignedBigInteger('users_id');
			$table->foreign('users_id')->references('id')->on('users');
			// $table->unsignedBigInteger('sekolah_id');
			// $table->foreign('sekolah_id')->references('id')->on('sekolah');
			$table->unsignedBigInteger('file_zip_id');
			$table->foreign('file_zip_id')->references('id')->on('file_zip');
			$table->unsignedBigInteger('file_bukti_id')->nullable();
			$table->foreign('file_bukti_id')->references('id')->on('file_bukti');
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
        Schema::dropIfExists('tim');
    }
}
