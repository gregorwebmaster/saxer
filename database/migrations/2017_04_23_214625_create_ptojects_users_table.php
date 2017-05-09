<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-23 23:46
 *
 * Description:
 *
 * Last modified: 2017-04-23 23:58
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePtojectsUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('projects_users');
        Schema::create('projects_users', function (Blueprint $table) {
            $table->integer('projects_id')->unsigned();
            $table->integer('users_id')->unsigned();
            $table->integer('roles_id')->unsigned();
            
            $table->primary(['projects_id', 'users_id']);
            $table->foreign('projects_id')->references('id')->on('projects');
            $table->foreign('users_id')->references('id')->on('users');
            $table->foreign('roles_id')->references('id')->on('roles');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects_users');
    }
}
