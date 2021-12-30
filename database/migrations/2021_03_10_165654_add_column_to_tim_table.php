<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToTimTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tim', function (Blueprint $table) {
            $table->dateTime('absen_tm')->nullable();
			$table->dateTime('absen_day1')->nullable();
			$table->dateTime('absen_day2')->nullable();
			$table->dateTime('absen_day3')->nullable();
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
