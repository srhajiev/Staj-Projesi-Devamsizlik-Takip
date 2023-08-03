<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RolesAndPermissionsSeeder::class);

        $user = User::create([
            'name'          => 'Admin',
            'email'         => 'admin@hajiev.com',
            'password'      => bcrypt('12345678'),
            'created_at'    => date("Y-m-d H:i:s")
        ]);
        $user->assignRole('Admin');

        $user2 = User::create([
            'name'          => 'Hoca',
            'email'         => 'teacher@hajiev.com',
            'password'      => bcrypt('12345678'),
            'created_at'    => date("Y-m-d H:i:s")
        ]);
        $user2->assignRole('Teacher');

        $user3 = User::create([
            'name'          => 'Veli',
            'email'         => 'parent@hajiev.com',
            'password'      => bcrypt('12345678'),
            'created_at'    => date("Y-m-d H:i:s")
        ]);
        $user3->assignRole('Parent');

        $user4 = User::create([
            'name'          => 'Ogrenci',
            'email'         => 'student@hajiev.com',
            'password'      => bcrypt('12345678'),
            'created_at'    => date("Y-m-d H:i:s")
        ]);
        $user4->assignRole('Student');


        DB::table('teachers')->insert([
            [
                'user_id'           => $user2->id,
                'gender'            => 'male',
                'phone'             => '0123456789',
                'dateofbirth'       => '1999-06-27',
                'current_address'   => 'Dhaka-1215',
                'permanent_address' => 'Dhaka-1215',
                'created_at'        => date("Y-m-d H:i:s")
            ]
        ]);

        DB::table('parents')->insert([
            [
                'user_id'           => $user3->id,
                'gender'            => 'male',
                'phone'             => '0123456789',
                'current_address'   => 'Mersin-1215',
                'permanent_address' => 'Mersin-1215',
                'created_at'        => date("Y-m-d H:i:s")
            ]
        ]);

        DB::table('grades')->insert([
            'teacher_id'        => 1,
            'class_numeric'     => 1,
            'class_name'        => 'SinifAdi',
            'class_description' => 'AciklamaMetni'
        ]);

        DB::table('students')->insert([
            [
                'user_id'           => $user4->id,
                'parent_id'         => 1,
                'class_id'          => 1,
                'roll_number'       => 1,
                'gender'            => 'male',
                'phone'             => '0123456789',
                'dateofbirth'       => '1999-06-27',
                'current_address'   => 'Mersin-1215',
                'permanent_address' => 'Mersin-1215',
                'created_at'        => date("Y-m-d H:i:s")
            ]
        ]);

    }
}
