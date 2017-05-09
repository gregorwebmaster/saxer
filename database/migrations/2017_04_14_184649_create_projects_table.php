<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-14 20:46
 *
 * Description: Migration to creating projects table
 *
 * Last modified: 2017-04-30 00:56
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('projects');
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->string('description');
            $table->string('domain', 50);
            $table->boolean('rwd_template')->default(false);    //use RWD routing for project
            $table->boolean('status')->default(false);          //switch on-line status
            $table->integer('master_id')->unsigned();                       //id master Project for subprojects
            $table->integer('owner_id')->unsigned();
            $table->timestampsTz();

            $table->unique('name');
            $table->unique('domain');
            $table->foreign('master_id')->references('id')->on('projects');
            $table->foreign('owner_id')->references('id')->on('users');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects');
    }
}