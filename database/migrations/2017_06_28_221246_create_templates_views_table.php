<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTemplatesViewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('templates_views', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',30);
            $table->integer('templates_id')->unsigned();
            $table->timestampsTz();

            $table->unique(['name', 'templates_id']);
            $table->foreign('templates_id')->references('id')->on('templates');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('templates_views');
    }
}
