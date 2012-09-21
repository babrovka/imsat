require 'test_helper'

class SlidesControllerTest < ActionController::TestCase
  test "should get slider" do
    get :slider
    assert_response :success
  end

end
