require 'test_helper'

class MethodCallsControllerTest < ActionController::TestCase
  setup do
    @method_call = method_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method_call" do
    assert_difference('MethodCall.count') do
      post :create, method_call: { name: @method_call.name }
    end

    assert_redirected_to method_call_path(assigns(:method_call))
  end

  test "should show method_call" do
    get :show, id: @method_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @method_call
    assert_response :success
  end

  test "should update method_call" do
    put :update, id: @method_call, method_call: { name: @method_call.name }
    assert_redirected_to method_call_path(assigns(:method_call))
  end

  test "should destroy method_call" do
    assert_difference('MethodCall.count', -1) do
      delete :destroy, id: @method_call
    end

    assert_redirected_to method_calls_path
  end
end
