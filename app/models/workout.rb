class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
end
