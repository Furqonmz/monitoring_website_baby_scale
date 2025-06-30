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
    /**
     * Seed the application's database.
     */
    // public function run(): void
    // {
        // User::factory(10)->create();

        // Category::create([
        //     'name'=> 'Web Design',
        //     'slug'=> 'web-design',
        // ]);

        // Post::create([
        //     'title'=> 'Judul Artikel 1',
        //     'author_id'=> '1',
        //     'category_id'=> '1',
        //     'slug'=> 'judul-artikel-1',
        //     'body'=> 'Lorem ipsum sit amet anjing gimana ini tehhh tolol asatagfirulloh T_T',

        // ]);
        // $this->call([CategorySeeder::class,UserSeeder::class]);
        // Post::factory(100)->recycle([
        //     Category::all(),
        //     User::all()
        // ])->create();
    // }

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
