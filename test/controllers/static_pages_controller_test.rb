require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get state" do
    get :state
    assert_response :success
  end

  test "should get cv" do
    get :cv
    assert_response :success
  end

  test "should get term" do
    get :term
    assert_response :success
  end

end
