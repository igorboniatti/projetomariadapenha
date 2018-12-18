require 'test_helper'

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get news_inde_url
    assert_response :success
  end

end
