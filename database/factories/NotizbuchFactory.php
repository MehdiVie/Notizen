<?php


namespace Database\Factories;


use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Notizbuch;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Notizbuch>
 */
class NotizbuchFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => User::inRandomOrder()->first()->id,
            'title'=>fake()->sentence,
            'description'=>fake()->paragraph,
            'completed'=>fake()->boolean
        ];
    }
}
