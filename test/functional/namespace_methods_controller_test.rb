require 'test_helper'

class NamespaceMethodsControllerTest < ActionController::TestCase
  setup do
    @namespace_method = namespace_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:namespace_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create namespace_method" do
    assert_difference('NamespaceMethod.count') do
      post :create, namespace_method: { name: @namespace_method.name }
    end

    assert_redirected_to namespace_method_path(assigns(:namespace_method))
  end

  test "should show namespace_method" do
    get :show, id: @namespace_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @namespace_method
    assert_response :success
  end

  test "should update namespace_method" do
    put :update, id: @namespace_method, namespace_method: { name: @namespace_method.name }
    assert_redirected_to namespace_method_path(assigns(:namespace_method))
  end

  test "should destroy namespace_method" do
    assert_difference('NamespaceMethod.count', -1) do
      delete :destroy, id: @namespace_method
    end

    assert_redirected_to namespace_methods_path
  end
end
