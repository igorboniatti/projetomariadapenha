require 'test_helper'

class AnonymousDenounciationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anonymous_denounciation = anonymous_denounciations(:one)
  end

  test "should get index" do
    get anonymous_denounciations_url
    assert_response :success
  end

  test "should get new" do
    get new_anonymous_denounciation_url
    assert_response :success
  end

  test "should create anonymous_denounciation" do
    assert_difference('AnonymousDenounciation.count') do
      post anonymous_denounciations_url, params: { anonymous_denounciation: { address_id: @anonymous_denounciation.address_id, location_type: @anonymous_denounciation.location_type, occurrence_date: @anonymous_denounciation.occurrence_date, report: @anonymous_denounciation.report, uncertain_date: @anonymous_denounciation.uncertain_date } }
    end

    assert_redirected_to anonymous_denounciation_url(AnonymousDenounciation.last)
  end

  test "should show anonymous_denounciation" do
    get anonymous_denounciation_url(@anonymous_denounciation)
    assert_response :success
  end

  test "should get edit" do
    get edit_anonymous_denounciation_url(@anonymous_denounciation)
    assert_response :success
  end

  test "should update anonymous_denounciation" do
    patch anonymous_denounciation_url(@anonymous_denounciation), params: { anonymous_denounciation: { address_id: @anonymous_denounciation.address_id, location_type: @anonymous_denounciation.location_type, occurrence_date: @anonymous_denounciation.occurrence_date, report: @anonymous_denounciation.report, uncertain_date: @anonymous_denounciation.uncertain_date } }
    assert_redirected_to anonymous_denounciation_url(@anonymous_denounciation)
  end

  test "should destroy anonymous_denounciation" do
    assert_difference('AnonymousDenounciation.count', -1) do
      delete anonymous_denounciation_url(@anonymous_denounciation)
    end

    assert_redirected_to anonymous_denounciations_url
  end
end
