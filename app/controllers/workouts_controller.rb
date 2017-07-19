class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def create
    puts params
    puts params[:workout][:exercise_id]

    @workout = Workout.create!(user_id: current_user.id, name: params[:workout][:name], description: params[:workout][:description])
    params[:workout][:exercise_id].each do |exercise_id|
      if exercise_id != ""
        @workout.workout_exercises.create(exercise_id: exercise_id)
      end
    end
    redirect_to @workout
  end

  def new
    @workout = Workout.new
    @exercise = Exercise.new
    @exercises = Exercise.all
    @muscle_groups = MuscleGroup.all
  end

  def generate
    @workout = current_user.workouts.create(name: params[:name], description: params[:description])
    params[:muscle_group_id].each do |muscle_group|
      if !muscle_group.empty?
        @muscle = MuscleGroup.find(muscle_group)
        @exercise = muscle_group.exercises.sample
        @workout.workout_exercises.create(exercise_id: @exercise.id)
      end
    end
    redirect_to @workout
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
