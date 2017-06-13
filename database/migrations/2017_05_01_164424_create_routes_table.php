<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-05-01 18:44
 *
 * Description:
 *
 * Last modified: 2017-05-01 18:59
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRoutesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('routes');
        Schema::create('routes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('path');
            $table->string('name', 30);
            $table->string('controller');
            $table->string('view');
            $table->integer('projects_id')->unsigned();
            $table->timestampsTz();


            $table->unique(['projects_id', 'path']);
            $table->foreign('projects_id')->references('id')->on('projects');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('routes');
    }
}
