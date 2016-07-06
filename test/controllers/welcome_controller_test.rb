require "test_helper"

class WelcomeControllerTest < ActionController::TestCase
  def test_homepage
    get :homepage
    assert_response :success
  end

end
