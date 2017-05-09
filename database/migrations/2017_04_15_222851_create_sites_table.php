<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-16 00:28
 *
 * Description:
 *
 * Last modified: 2017-05-03 23:21
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSitesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('sites');
        Schema::create('sites', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->string('path')->nullable();
            $table->string('titel')->nullable();
            $table->mediumText('options')->nullable();
            $table->integer('projects_id')->unsigned();
            $table->integer('categories_id')->unsigned();
            $table->integer('owner_id')->unsigned();
            $table->timestampsTz();

            $table->unique(['path', 'projects_id']);
            $table->foreign('projects_id')->references('id')->on('projects');
//            $table->foreign('categories_id')->references('id')->on('categories');
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
        Schema::dropIfExists('sites');
    }
}
