<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListPelanggaranTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('list_pelanggaran', function (Blueprint $table) {
            // Schema::disableForeignKeyConstraints();
            $table->id();
            // $table->foreignId('tim_id')->constrained('tim');
            // $table->foreignId('pelanggaran_id')->constrained('pelanggarans');
            $table->unsignedBigInteger('tim_id');
			// $table->foreign('tim_id')->references('id')->on('tim');
            $table->unsignedBigInteger('pelanggaran_id');
			// $table->foreign('pelanggaran_id')->references('id')->on('pelanggarans');
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
        Schema::dropIfExists('list_pelanggaran');
    }
}
