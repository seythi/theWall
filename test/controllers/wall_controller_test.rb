require 'test_helper'

class WallControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get wall" do
    get :wall
    assert_response :success
  end

end
