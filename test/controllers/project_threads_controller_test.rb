require 'test_helper'

class ProjectThreadsControllerTest < ActionController::TestCase
  setup do
    @project_thread = project_threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_thread" do
    assert_difference('ProjectThread.count') do
      post :create, project_thread: { title: @project_thread.title, user_id: @project_thread.user_id }
    end

    assert_redirected_to project_thread_path(assigns(:project_thread))
  end

  test "should show project_thread" do
    get :show, id: @project_thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_thread
    assert_response :success
  end

  test "should update project_thread" do
    patch :update, id: @project_thread, project_thread: { title: @project_thread.title, user_id: @project_thread.user_id }
    assert_redirected_to project_thread_path(assigns(:project_thread))
  end

  test "should destroy project_thread" do
    assert_difference('ProjectThread.count', -1) do
      delete :destroy, id: @project_thread
    end

    assert_redirected_to project_threads_path
  end
end
