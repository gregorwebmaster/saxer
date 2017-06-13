<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-15 00:12
 *
 * Description:
 *
 * Last modified: 2017-04-16 00:48
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',75);
            $table->mediumText('value');
            $table->boolean('global')->default(false);
            $table->integer('projects_id')->unsigned();
            $table->timestampsTz();

            $table->unique(['name', 'projects_id']);
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
        Schema::dropIfExists('projects_settings');
    }
}
