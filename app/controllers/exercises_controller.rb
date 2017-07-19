class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :description)
  end
end
