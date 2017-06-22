<?php

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
        Schema::create('sites', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 30);
            $table->string('path')->nullable();
            $table->string('controller')->nullable();
            $table->string('view');
            $table->string('slug')->nullable();
            $table->string('title')->nullable();
            $table->mediumText('options')->nullable();
            $table->boolean('enabled')->default(false);
            $table->integer('projects_id')->unsigned();
            $table->integer('owner_id')->unsigned();
            $table->timestampsTz();

            $table->unique(['path', 'projects_id']);
            $table->unique(['slug', 'projects_id']);
            $table->foreign('projects_id')->references('id')->on('projects');
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
