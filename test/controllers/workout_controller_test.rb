require 'test_helper'

class WorkoutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workout_index_url
    assert_response :success
  end

  test "should get create" do
    get workout_create_url
    assert_response :success
  end

  test "should get new" do
    get workout_new_url
    assert_response :success
  end

  test "should get update" do
    get workout_update_url
    assert_response :success
  end

  test "should get edit" do
    get workout_edit_url
    assert_response :success
  end

  test "should get show" do
    get workout_show_url
    assert_response :success
  end

  test "should get destroy" do
    get workout_destroy_url
    assert_response :success
  end

end
