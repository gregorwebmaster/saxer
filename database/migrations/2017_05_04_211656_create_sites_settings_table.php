<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 *
 * Created on 2017-05-04 23:16
 *
 * Description:
 *
 * Last modified: 2017-05-05 18:24
 *
 * Licence MIT
 */
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSitesSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sites_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',75);
            $table->mediumText('value');
            $table->integer('sites_id')->unsigned();
            $table->timestampsTz();

            $table->unique(['name', 'sites_id']);
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
        Schema::dropIfExists('sites_settings');
    }
}
