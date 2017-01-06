require 'test_helper'

class ActcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actcode = actcodes(:one)
  end

  test "should get index" do
    get actcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_actcode_url
    assert_response :success
  end

  test "should create actcode" do
    assert_difference('Actcode.count') do
      post actcodes_url, params: { actcode: { actcode: @actcode.actcode, description: @actcode.description, management_id: @actcode.management_id, user_id: @actcode.user_id } }
    end

    assert_redirected_to actcode_url(Actcode.last)
  end

  test "should show actcode" do
    get actcode_url(@actcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_actcode_url(@actcode)
    assert_response :success
  end

  test "should update actcode" do
    patch actcode_url(@actcode), params: { actcode: { actcode: @actcode.actcode, description: @actcode.description, management_id: @actcode.management_id, user_id: @actcode.user_id } }
    assert_redirected_to actcode_url(@actcode)
  end

  test "should destroy actcode" do
    assert_difference('Actcode.count', -1) do
      delete actcode_url(@actcode)
    end

    assert_redirected_to actcodes_url
  end
end
