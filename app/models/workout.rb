class Workout < ApplicationRecord
  belongs_to :user
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises
end
