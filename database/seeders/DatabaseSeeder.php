<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
        public function run(): void
    {
        $this->call([
            BbulSeeder::class,
            BbupSeeder::class,
            PbulSeeder::class,
            PbupSeeder::class,
            BbpblSeeder::class,
            BbpbpSeeder::class,
        ]);
    }
}
