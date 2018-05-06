require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get notify" do
    get guests_notify_url
    assert_response :success
  end

end
