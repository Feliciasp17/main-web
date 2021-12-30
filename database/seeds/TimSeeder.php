<?php

use Illuminate\Database\Seeder;

class TimSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <= 120 ; $i++) { 
			DB::table('tim')->insert([
				'nama' => 'Panitia '.$i,
				'sekolah' => 'qwertyuiop',
				'alamat_sekolah' => 'qwertyuiop',
				'status' => 'confirmed',
				'status_file' => 'confirmed',
				'kab_kota_id' => 1,
				'users_id' => $i,
				'file_zip_id' => 1,
				'file_bukti_id' => 1,
			]);
		}
    }
}
