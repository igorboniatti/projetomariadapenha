require 'test_helper'

class OccurrenceBulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @occurrence_bulletin = occurrence_bulletins(:one)
  end

  test "should get index" do
    get occurrence_bulletins_url
    assert_response :success
  end

  test "should get new" do
    get new_occurrence_bulletin_url
    assert_response :success
  end

  test "should create occurrence_bulletin" do
    assert_difference('OccurrenceBulletin.count') do
      post occurrence_bulletins_url, params: { occurrence_bulletin: { location_type: @occurrence_bulletin.location_type, occurrence_date: @occurrence_bulletin.occurrence_date, person_id: @occurrence_bulletin.person_id, report: @occurrence_bulletin.report, uncertain_date: @occurrence_bulletin.uncertain_date } }
    end

    assert_redirected_to occurrence_bulletin_url(OccurrenceBulletin.last)
  end

  test "should show occurrence_bulletin" do
    get occurrence_bulletin_url(@occurrence_bulletin)
    assert_response :success
  end

  test "should get edit" do
    get edit_occurrence_bulletin_url(@occurrence_bulletin)
    assert_response :success
  end

  test "should update occurrence_bulletin" do
    patch occurrence_bulletin_url(@occurrence_bulletin), params: { occurrence_bulletin: { location_type: @occurrence_bulletin.location_type, occurrence_date: @occurrence_bulletin.occurrence_date, person_id: @occurrence_bulletin.person_id, report: @occurrence_bulletin.report, uncertain_date: @occurrence_bulletin.uncertain_date } }
    assert_redirected_to occurrence_bulletin_url(@occurrence_bulletin)
  end

  test "should destroy occurrence_bulletin" do
    assert_difference('OccurrenceBulletin.count', -1) do
      delete occurrence_bulletin_url(@occurrence_bulletin)
    end

    assert_redirected_to occurrence_bulletins_url
  end
end
