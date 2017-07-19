Welcome to our fitness app!

Created by Cameron Jenner, Andrew Littlefield, and Devon Patey


The end goal of the app is a social media platform to maximize users' potential.

Users can create exercises, create workouts, share workouts, follow other users' workouts, favorite workouts, generate random workouts based on desired muscle groups, and view other users doing similar workouts in their area.

Users can create recipes, substitute ingredients, generate recipes with auto-substituted ingredients based on dietary restrictions or preferences, share recipes, follow other users, find users using similar recipes in thier area.

Users can post about their fitness progress, on a general forum, share pictures, follow others, and meet others with similar interests.


Stage One of the project is building workout functionality.





Interacting with the database: 

Models include: 
• user
• post
• comment
• image
• workout
• subscription (user and workout join table)
• exercise
• workout exercises (workout and exercise join table)
• muscle group
• muscle group exercises (exercise and muscle group join table)

View all muscle groups:
MuscleGroup.all

View all muscle group exercises:
MuscleGroupExercise.all

View all exercises:
Exercise.all

Make pushups:
pushups = Exercise.create(name: "Push Ups", description: "Do a push up.")

Make back muscle group:
back = MuscleGroup.create(name: "back")

Join pushups and back:
pushups.muscle_group_exercises.create(muscle_group_id: back.id)

View all muscle groups for pushups:
pushups.muscle_groups

View all exercises for back:
back.exercises

Create new workout:
basic = Workout.create(user_id: @user.id, name: "Basic workout", description: "Work the upper body")

Join workout and exercise:
basic.workout_exercises.create(exercise_id: 1)

View exercise id's within workout:
basic.workout_exercises

Get an exercise in a workout:
basic.workout_exercises.first.exercise