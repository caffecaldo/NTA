require 'test_helper'

class RanktestsControllerTest < ActionController::TestCase
  setup do
    @ranktest = ranktests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ranktests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ranktest" do
    assert_difference('Ranktest.count') do
      post :create, :ranktest => @ranktest.attributes
    end

    assert_redirected_to ranktest_path(assigns(:ranktest))
  end

  test "should show ranktest" do
    get :show, :id => @ranktest.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ranktest.to_param
    assert_response :success
  end

  test "should update ranktest" do
    put :update, :id => @ranktest.to_param, :ranktest => @ranktest.attributes
    assert_redirected_to ranktest_path(assigns(:ranktest))
  end

  test "should destroy ranktest" do
    assert_difference('Ranktest.count', -1) do
      delete :destroy, :id => @ranktest.to_param
    end

    assert_redirected_to ranktests_path
  end
end
