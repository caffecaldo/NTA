require 'test_helper'

class YearEndReviewsControllerTest < ActionController::TestCase
  setup do
    @year_end_review = year_end_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:year_end_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create year_end_review" do
    assert_difference('YearEndReview.count') do
      post :create, :year_end_review => @year_end_review.attributes
    end

    assert_redirected_to year_end_review_path(assigns(:year_end_review))
  end

  test "should show year_end_review" do
    get :show, :id => @year_end_review.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @year_end_review.to_param
    assert_response :success
  end

  test "should update year_end_review" do
    put :update, :id => @year_end_review.to_param, :year_end_review => @year_end_review.attributes
    assert_redirected_to year_end_review_path(assigns(:year_end_review))
  end

  test "should destroy year_end_review" do
    assert_difference('YearEndReview.count', -1) do
      delete :destroy, :id => @year_end_review.to_param
    end

    assert_redirected_to year_end_reviews_path
  end
end
