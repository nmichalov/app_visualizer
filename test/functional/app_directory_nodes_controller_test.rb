require 'test_helper'

class AppDirectoryNodesControllerTest < ActionController::TestCase
  setup do
    @app_directory_node = app_directory_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_directory_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_directory_node" do
    assert_difference('AppDirectoryNode.count') do
      post :create, app_directory_node: { name: @app_directory_node.name, parent_node_id: @app_directory_node.parent_node_id }
    end

    assert_redirected_to app_directory_node_path(assigns(:app_directory_node))
  end

  test "should show app_directory_node" do
    get :show, id: @app_directory_node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_directory_node
    assert_response :success
  end

  test "should update app_directory_node" do
    put :update, id: @app_directory_node, app_directory_node: { name: @app_directory_node.name, parent_node_id: @app_directory_node.parent_node_id }
    assert_redirected_to app_directory_node_path(assigns(:app_directory_node))
  end

  test "should destroy app_directory_node" do
    assert_difference('AppDirectoryNode.count', -1) do
      delete :destroy, id: @app_directory_node
    end

    assert_redirected_to app_directory_nodes_path
  end
end
