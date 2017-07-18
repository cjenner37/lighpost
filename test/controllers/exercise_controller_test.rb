require 'test_helper'

class ExerciseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exercise_index_url
    assert_response :success
  end

  test "should get create" do
    get exercise_create_url
    assert_response :success
  end

  test "should get new" do
    get exercise_new_url
    assert_response :success
  end

  test "should get update" do
    get exercise_update_url
    assert_response :success
  end

  test "should get edit" do
    get exercise_edit_url
    assert_response :success
  end

  test "should get show" do
    get exercise_show_url
    assert_response :success
  end

  test "should get destroy" do
    get exercise_destroy_url
    assert_response :success
  end

end
