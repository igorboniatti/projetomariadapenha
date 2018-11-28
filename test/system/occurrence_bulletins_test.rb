require "application_system_test_case"

class OccurrenceBulletinsTest < ApplicationSystemTestCase
  setup do
    @occurrence_bulletin = occurrence_bulletins(:one)
  end

  test "visiting the index" do
    visit occurrence_bulletins_url
    assert_selector "h1", text: "Occurrence Bulletins"
  end

  test "creating a Occurrence bulletin" do
    visit occurrence_bulletins_url
    click_on "New Occurrence Bulletin"

    fill_in "Location Type", with: @occurrence_bulletin.location_type
    fill_in "Occurrence Date", with: @occurrence_bulletin.occurrence_date
    fill_in "Person", with: @occurrence_bulletin.person_id
    fill_in "Report", with: @occurrence_bulletin.report
    fill_in "Uncertain Date", with: @occurrence_bulletin.uncertain_date
    click_on "Create Occurrence bulletin"

    assert_text "Occurrence bulletin was successfully created"
    click_on "Back"
  end

  test "updating a Occurrence bulletin" do
    visit occurrence_bulletins_url
    click_on "Edit", match: :first

    fill_in "Location Type", with: @occurrence_bulletin.location_type
    fill_in "Occurrence Date", with: @occurrence_bulletin.occurrence_date
    fill_in "Person", with: @occurrence_bulletin.person_id
    fill_in "Report", with: @occurrence_bulletin.report
    fill_in "Uncertain Date", with: @occurrence_bulletin.uncertain_date
    click_on "Update Occurrence bulletin"

    assert_text "Occurrence bulletin was successfully updated"
    click_on "Back"
  end

  test "destroying a Occurrence bulletin" do
    visit occurrence_bulletins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Occurrence bulletin was successfully destroyed"
  end
end
