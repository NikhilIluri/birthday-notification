require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get home_admin_url
    assert_response :success
  end

  test "should get customer" do
    get home_customer_url
    assert_response :success
  end

end
