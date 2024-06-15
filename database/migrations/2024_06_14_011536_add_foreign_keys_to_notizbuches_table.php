<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('notizbuches', function (Blueprint $table) {
            $table->foreign(['user_id'], 'notizbuches_ibfk_1')->references(['id'])->on('users')->onUpdate('restrict')->onDelete('cascade');
            $table->foreign(['user_id'], 'notizbuches_ibfk_2')->references(['id'])->on('users')->onUpdate('restrict')->onDelete('restrict');
            $table->foreign(['user_id'], 'notizbuches_ibfk_3')->references(['id'])->on('users')->onUpdate('restrict')->onDelete('restrict');
            $table->foreign(['user_id'], 'notizbuches_ibfk_4')->references(['id'])->on('users')->onUpdate('restrict')->onDelete('restrict');
            $table->foreign(['user_id'], 'notizbuches_ibfk_5')->references(['id'])->on('users')->onUpdate('restrict')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('notizbuches', function (Blueprint $table) {
            $table->dropForeign('notizbuches_ibfk_1');
            $table->dropForeign('notizbuches_ibfk_2');
            $table->dropForeign('notizbuches_ibfk_3');
            $table->dropForeign('notizbuches_ibfk_4');
            $table->dropForeign('notizbuches_ibfk_5');
        });
    }
};
