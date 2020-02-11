require 'test_helper'

class TravellersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get travellers_show_url
    assert_response :success
  end

end
