require 'test_helper'

class JobHuntServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_hunt_services_index_url
    assert_response :success
  end

  test "should get show" do
    get job_hunt_services_show_url
    assert_response :success
  end

end
