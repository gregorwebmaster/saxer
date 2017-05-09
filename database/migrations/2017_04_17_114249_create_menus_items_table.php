<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-17 13:42
 *
 * Description:
 *
 * Last modified: 2017-04-17 13:54
 *
 * Licence MIT
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenusItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('menus_items');
        Schema::create('menus_items', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('destination');
            $table->integer('parents');
            $table->mediumText('options');
            $table->integer('menu_id')->unsigned();
            $table->timestampsTz();

            $table->index('menu_id');
            $table->foreign('menu_id')->references('id')->on('menus');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('menus_items');
    }
}
