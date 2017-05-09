<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-17 21:09
 *
 * Description: Cdeated defaut data into roles table
 *
 * Last modified: 2017-04-30 01:12
 *
 * Licence MIT
 */

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert(
            array(
                //system roles
                [
                    'name' => 'root',
                    'description' => 'System Administrator',
                    'global' => '1',
                    'project_create' => 1,
                    'project_delete' => 1,
                    'project_read' => 1,
                    'project_write' => 1,
                    'project_public' => 1,
                    'site_create' => 1,
                    'site_delete' => 1,
                    'site_read' => 1,
                    'site_write' => 1,
                    'site_public' => 1,
                    'content_create' => 1,
                    'content_delete' => 1,
                    'content_read' => 1,
                    'content_write' => 1,
                    'user_create' => 1,
                    'user_delete' => 1,
                    'user_read' => 1,
                    'user_write' => 1
                ],
                [
                    'name' => 'menager',
                    'description' => 'System Menager',
                    'global' => '1',
                    'project_create' => 1,
                    'project_delete' => 1,
                    'project_read' => 1,
                    'project_write' => 1,
                    'project_public' => 1,
                    'site_create' => 1,
                    'site_delete' => 1,
                    'site_read' => 1,
                    'site_write' => 1,
                    'site_public' => 1,
                    'content_create' => 1,
                    'content_delete' => 1,
                    'content_read' => 1,
                    'content_write' => 1,
                    'user_create' => 0,
                    'user_delete' => 0,
                    'user_read' => 0,
                    'user_write' => 0
                ],
                [
                    //can menage only own projects
                    'name' => 'user',
                    'description' => 'User',
                    'global' => '1',
                    'project_create' => 1,
                    'project_delete' => 1,
                    'project_read' => 1,
                    'project_write' => 1,
                    'project_public' => 1,
                    'site_create' => 0,
                    'site_delete' => 0,
                    'site_read' => 0,
                    'site_write' => 0,
                    'site_public' => 0,
                    'content_create' => 0,
                    'content_delete' => 0,
                    'content_read' => 0,
                    'content_write' => 0,
                    'user_create' => 0,
                    'user_delete' => 0,
                    'user_read' => 0,
                    'user_write' => 0
                ],
                //only projects role
                [
                    'name' => 'admin',
                    'description' => 'Project Administrator',
                    'global' => '0',
                    'project_create' => 1,
                    'project_delete' => 1,
                    'project_read' => 1,
                    'project_write' => 1,
                    'project_public' => 1,
                    'site_create' => 1,
                    'site_delete' => 1,
                    'site_read' => 1,
                    'site_write' => 1,
                    'site_public' => 1,
                    'content_create' => 1,
                    'content_delete' => 1,
                    'content_read' => 1,
                    'content_write' => 1,
                    'user_create' => 1,
                    'user_delete' => 1,
                    'user_read' => 1,
                    'user_write' => 1
                ],
                [
                    'name' => 'redactor',
                    'description' => 'Project Redactor',
                    'global' => '0',
                    'project_create' => 0,
                    'project_delete' => 0,
                    'project_read' => 0,
                    'project_write' => 0,
                    'project_public' => 0,
                    'site_create' => 1,
                    'site_delete' => 1,
                    'site_read' => 1,
                    'site_write' => 1,
                    'site_public' => 1,
                    'content_create' => 1,
                    'content_delete' => 1,
                    'content_read' => 1,
                    'content_write' => 1,
                    'user_create' => 0,
                    'user_delete' => 0,
                    'user_read' => 0,
                    'user_write' => 0
                ],
                [
                    'name' => 'autor',
                    'description' => 'Autor',
                    'global' => '0',
                    'project_create' => 0,
                    'project_delete' => 0,
                    'project_read' => 0,
                    'project_write' => 0,
                    'project_public' => 0,
                    'site_create' => 1,
                    'site_delete' => 1,     //only own
                    'site_read' => 1,
                    'site_write' => 1,       //only own
                    'site_public' => 0,
                    'content_create' => 1,
                    'content_delete' => 1,   //only own
                    'content_read' => 1,
                    'content_write' => 1,    //only own
                    'user_create' => 0,
                    'user_delete' => 0,
                    'user_read' => 0,
                    'user_write' => 0
                ]
            )
        );
    }
}
