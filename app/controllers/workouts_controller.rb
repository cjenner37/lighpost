class WorkoutsController < ApplicationController
  def index
  end

  def create
  end

  def new
    @workout = Workout.new
    @exercises = Exercise.all
    @muscle_groups = MuscleGroup.all
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
