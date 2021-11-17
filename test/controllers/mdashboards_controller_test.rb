require 'test_helper'

class MdashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mdashboard = mdashboards(:one)
  end

  test "should get index" do
    get mdashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_mdashboard_url
    assert_response :success
  end

  test "should create mdashboard" do
    assert_difference('Mdashboard.count') do
      post mdashboards_url, params: { mdashboard: { desc: @mdashboard.desc } }
    end

    assert_redirected_to mdashboard_url(Mdashboard.last)
  end

  test "should show mdashboard" do
    get mdashboard_url(@mdashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_mdashboard_url(@mdashboard)
    assert_response :success
  end

  test "should update mdashboard" do
    patch mdashboard_url(@mdashboard), params: { mdashboard: { desc: @mdashboard.desc } }
    assert_redirected_to mdashboard_url(@mdashboard)
  end

  test "should destroy mdashboard" do
    assert_difference('Mdashboard.count', -1) do
      delete mdashboard_url(@mdashboard)
    end

    assert_redirected_to mdashboards_url
  end
end
