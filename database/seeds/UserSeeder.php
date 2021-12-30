<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <= 120 ; $i++) { 
			DB::table('users')->insert([
				'name' => 'Panitia '.$i,
				'email' => 'panitia'.$i.'@cegubaya.com',
				'password' => '$2y$12$FFUYaap7er/CQVOxDW1WFegnn9m0hzNhLsNEnxoio4fD6u0kEI/6W',
				'role' => 'peserta'
			]);
		}
    }
}
