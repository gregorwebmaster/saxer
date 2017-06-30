<?php

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
        Schema::create('sites_modules', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->integer('order')->nullable();
            $table->mediumText('options');
            $table->boolean('enabled')->default(false);
            $table->boolean('rwd_desktop')->default(false);
            $table->boolean('rwd_tablet')->default(false);
            $table->boolean('rwd_mobile')->default(false);
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
        Schema::dropIfExists('sites_modules');
    }
}
