<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-16 00:36
 *
 * Description:
 *
 * Last modified: 2017-04-17 19:54
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSitesModulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('sites_module');
        Schema::create('sites_module', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->mediumText('options');
            $table->boolean('enabled')->default(false);
            $table->integer('sites_id')->unsigned();
            $table->timestampsTz();

            $table->unique(['sites_id', 'name']);
            $table->foreign('sites_id')->references('id')->on('sites');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sites_module');
    }
}
