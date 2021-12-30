<?php

use Illuminate\Database\Seeder;

class SessionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0; $i < 10; $i++)
        {
            DB::table('active_session')->insert([
                
                'kegiatan'=> "kegiatan".$i,
                'tipe'=> "tipe".$i,
                'mulai'=> "20210321",
                'selesai'=> "20210321",
                'keterangan'=> "no desc"
            
            ]);
        }
    }
}
