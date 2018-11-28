require 'test_helper'

class AccessLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_level = access_levels(:one)
  end

  test "should get index" do
    get access_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_access_level_url
    assert_response :success
  end

  test "should create access_level" do
    assert_difference('AccessLevel.count') do
      post access_levels_url, params: { access_level: { level: @access_level.level, name: @access_level.name } }
    end

    assert_redirected_to access_level_url(AccessLevel.last)
  end

  test "should show access_level" do
    get access_level_url(@access_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_level_url(@access_level)
    assert_response :success
  end

  test "should update access_level" do
    patch access_level_url(@access_level), params: { access_level: { level: @access_level.level, name: @access_level.name } }
    assert_redirected_to access_level_url(@access_level)
  end

  test "should destroy access_level" do
    assert_difference('AccessLevel.count', -1) do
      delete access_level_url(@access_level)
    end

    assert_redirected_to access_levels_url
  end
end
