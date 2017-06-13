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
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50);
            $table->string('description');
            $table->string('domain', 50);
            $table->string('template', 50);
            $table->boolean('rwd_template')->default(false);    //use RWD routing for project
            $table->boolean('enabled')->default(false);         //switch on-line status
            $table->integer('master_id')->nullable();           //id master Project for subprojects
            $table->timestampsTz();

            $table->unique('name');
            $table->unique('domain');

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