require 'test_helper'

class AppFilesControllerTest < ActionController::TestCase
  setup do
    @app_file = app_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_file" do
    assert_difference('AppFile.count') do
      post :create, app_file: { app_directory_id: @app_file.app_directory_id, name: @app_file.name }
    end

    assert_redirected_to app_file_path(assigns(:app_file))
  end

  test "should show app_file" do
    get :show, id: @app_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_file
    assert_response :success
  end

  test "should update app_file" do
    put :update, id: @app_file, app_file: { app_directory_id: @app_file.app_directory_id, name: @app_file.name }
    assert_redirected_to app_file_path(assigns(:app_file))
  end

  test "should destroy app_file" do
    assert_difference('AppFile.count', -1) do
      delete :destroy, id: @app_file
    end

    assert_redirected_to app_files_path
  end
end
