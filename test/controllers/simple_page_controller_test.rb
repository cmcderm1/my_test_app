require 'test_helper'

class SimplePageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get simple_page_index_url
    assert_response :success
  end

end
