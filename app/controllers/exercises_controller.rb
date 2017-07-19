class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    puts params
    @exercise = Exercise.create(name: params[:exercise][:name], description: params[:exercise][:description])
    params[:exercise][:muscle_group_id].each do |muscle_group_id|
      if muscle_group_id != ""
        @exercise.muscle_group_exercises.create(muscle_group_id: muscle_group_id)
      end
    end
    redirect_to @exercise
  end

  def update
  end

  def edit
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def destroy
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :description)
  end
end
