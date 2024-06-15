<?php
namespace Database\Seeders;

use App\Models\User;
use App\Models\Notizbuch;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    

    public function run(): void
    {
        User::factory()->create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
        ]);
        //User::factory(10)->create();
        //User::factory(2)->unverified()->create();
        //Notizbuch::factory(80)->create();

    }
}