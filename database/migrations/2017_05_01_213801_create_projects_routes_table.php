<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-05-01 23:38
 *
 * Description:
 *
 * Last modified: 2017-05-01 23:41
 *
 * Licence MIT
 */
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsRoutesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('projects_routes');
        Schema::create('projects_routes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('path');
            $table->integer('projects_id')->unsigned();
            $table->integer('routes_id')->unsigned();
            $table->timestampsTz();
            
            $table->index('projects_id');
            $table->foreign('projects_id')->references('id')->on('projects');
            $table->foreign('routes_id')->references('id')->on('routes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects_routes');
    }
}
