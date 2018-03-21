require 'test_helper'

class BasketballsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basketballs_index_url
    assert_response :success
  end

  test "should get show" do
    get basketballs_show_url
    assert_response :success
  end

end
