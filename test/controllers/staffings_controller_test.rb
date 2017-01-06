require 'test_helper'

class StaffingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staffing = staffings(:one)
  end

  test "should get index" do
    get staffings_url
    assert_response :success
  end

  test "should get new" do
    get new_staffing_url
    assert_response :success
  end

  test "should create staffing" do
    assert_difference('Staffing.count') do
      post staffings_url, params: { staffing: { contract_id: @staffing.contract_id, create: @staffing.create, destroy: @staffing.destroy, users_id: @staffing.users_id } }
    end

    assert_redirected_to staffing_url(Staffing.last)
  end

  test "should show staffing" do
    get staffing_url(@staffing)
    assert_response :success
  end

  test "should get edit" do
    get edit_staffing_url(@staffing)
    assert_response :success
  end

  test "should update staffing" do
    patch staffing_url(@staffing), params: { staffing: { contract_id: @staffing.contract_id, create: @staffing.create, destroy: @staffing.destroy, users_id: @staffing.users_id } }
    assert_redirected_to staffing_url(@staffing)
  end

  test "should destroy staffing" do
    assert_difference('Staffing.count', -1) do
      delete staffing_url(@staffing)
    end

    assert_redirected_to staffings_url
  end
end
