<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-14 19:54
 *
 * Description: Migration to creating roles table
 *
 * Last modified: 2017-05-07 13:07
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('roles');
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->string('description');
            $table->boolean('global')->default(false);
            $table->boolean('project_create')->default(false);
            $table->boolean('project_delete')->default(false);
            $table->boolean('project_read')->default(false);
            $table->boolean('project_write')->default(false);
            $table->boolean('project_public')->default(false);
            $table->boolean('site_create')->default(false);
            $table->boolean('site_delete')->default(false);
            $table->boolean('site_read')->default(false);
            $table->boolean('site_write')->default(false);
            $table->boolean('site_public')->default(false);
            $table->boolean('content_create')->default(false);
            $table->boolean('content_delete')->default(false);
            $table->boolean('content_read')->default(false);
            $table->boolean('content_write')->default(false);
            $table->boolean('user_create')->default(false);
            $table->boolean('user_delete')->default(false);
            $table->boolean('user_read')->default(false);
            $table->boolean('user_write')->default(false);

            $table->timestampsTz();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('roles');
    }
}
