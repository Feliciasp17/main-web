<?php

use Illuminate\Database\Seeder;

class LinksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        #wave link pos single & battle
        // for($i=1; $i <= 15; $i++)
        // {
        //     DB::table('links')->insert([
        //         'nama' => 'pos S'.$i,
		// 		'tipe' => 'pos',
		// 		'session_id' => 5,
		// 		'keterangan' => 1
        //     ]);
        // }

		// for($i=1; $i <= 15; $i++)
        // {
        //     DB::table('links')->insert([
        //         'nama' => 'pos B'.$i,
		// 		'tipe' => 'pos',
		// 		'session_id' => 5,
		// 		'keterangan' => 1
        //     ]);
        // }

		#link island
		for($i=1; $i <= 7; $i++)
        {
            DB::table('links')->insert([
                'nama' => 'island '.$i,
				'tipe' => 'island',
				'session_id' => 5,
				'keterangan' => 1
            ]);
        }
    }
}
