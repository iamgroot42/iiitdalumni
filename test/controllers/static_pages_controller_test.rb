require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get directory" do
    get :directory
    assert_response :success
  end

  test "should get contribute" do
    get :contribute
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

end
