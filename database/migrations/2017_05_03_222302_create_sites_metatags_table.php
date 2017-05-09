<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-05-04 00:23
 *
 * Description:
 *
 * Last modified: 2017-05-04 00:26
 *
 * Licence MIT
 */
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSitesMetatagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sites_metatags', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->string('content');
            $table->boolean('is_og_tags')->default(false);
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
        Schema::dropIfExists('sites_metatags');
    }
}
