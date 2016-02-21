require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { city: @task.city, country: @task.country, date_end: @task.date_end, date_start: @task.date_start, description: @task.description, image_url: @task.image_url, name: @task.name }
    end

    assert_response 201
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { city: @task.city, country: @task.country, date_end: @task.date_end, date_start: @task.date_start, description: @task.description, image_url: @task.image_url, name: @task.name }
    assert_response 204
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_response 204
  end
end
