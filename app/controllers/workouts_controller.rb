class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def create
    puts params
    puts params[:workout][:exercise_id]

    @workout = Workout.create(user_id: current_user.id, name: params[:workout][:name], description: params[:workout][:description])
    params[:workout][:exercise_id].each do |exercise_id|
      if exercise_id != ""
        @workout.workout_exercises.create(exercise_id: exercise_id)
      end
    end
    redirect_to workout_path(@workout.id)
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
    @workout = Workout.find(params[:id])
  end

  def destroy
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :description, :exercise_id)
  end
end
