require "test_helper"

class MoverobotControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get moverobot_show_url
    assert_response :success
  end

  test "should get update" do
    get moverobot_update_url
    assert_response :success
  end
end
