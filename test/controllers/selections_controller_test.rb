require 'test_helper'

class SelectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get selections_index_url
    assert_response :success
  end

  test "should get show" do
    get selections_show_url
    assert_response :success
  end

end
