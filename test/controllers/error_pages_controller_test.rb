require 'test_helper'

class ErrorPagesControllerTest < ActionController::TestCase
  test "should get not_found_error" do
    get :not_found_error
    assert_response :success
  end

  test "should get internal_errormisc_error" do
    get :internal_errormisc_error
    assert_response :success
  end

end
