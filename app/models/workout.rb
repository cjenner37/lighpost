class Workout < ApplicationRecord


  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions

  validates :name, presence: true
end
