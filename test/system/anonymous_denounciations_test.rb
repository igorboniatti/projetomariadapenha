require "application_system_test_case"

class AnonymousDenounciationsTest < ApplicationSystemTestCase
  setup do
    @anonymous_denounciation = anonymous_denounciations(:one)
  end

  test "visiting the index" do
    visit anonymous_denounciations_url
    assert_selector "h1", text: "Anonymous Denounciations"
  end

  test "creating a Anonymous denounciation" do
    visit anonymous_denounciations_url
    click_on "New Anonymous Denounciation"

    fill_in "Address", with: @anonymous_denounciation.address_id
    fill_in "Location Type", with: @anonymous_denounciation.location_type
    fill_in "Occurrence Date", with: @anonymous_denounciation.occurrence_date
    fill_in "Report", with: @anonymous_denounciation.report
    fill_in "Uncertain Date", with: @anonymous_denounciation.uncertain_date
    click_on "Create Anonymous denounciation"

    assert_text "Anonymous denounciation was successfully created"
    click_on "Back"
  end

  test "updating a Anonymous denounciation" do
    visit anonymous_denounciations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @anonymous_denounciation.address_id
    fill_in "Location Type", with: @anonymous_denounciation.location_type
    fill_in "Occurrence Date", with: @anonymous_denounciation.occurrence_date
    fill_in "Report", with: @anonymous_denounciation.report
    fill_in "Uncertain Date", with: @anonymous_denounciation.uncertain_date
    click_on "Update Anonymous denounciation"

    assert_text "Anonymous denounciation was successfully updated"
    click_on "Back"
  end

  test "destroying a Anonymous denounciation" do
    visit anonymous_denounciations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anonymous denounciation was successfully destroyed"
  end
end
