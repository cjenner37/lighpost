class Exercise < ApplicationRecord
	has_many :workout_exercises, dependent: :destroy
	has_many :workouts, through: :workout_exercises
	has_many :muscle_group_exercises
	has_many :muscle_groups, through: :muscle_group_exercises


	validates :name, presence: true
	validates :content, presence: true
	validates :muscle_group, presence: true
end
