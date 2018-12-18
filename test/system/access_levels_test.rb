require "application_system_test_case"

class AccessLevelsTest < ApplicationSystemTestCase
  setup do
    @access_level = access_levels(:one)
  end

  test "visiting the index" do
    visit access_levels_url
    assert_selector "h1", text: "Access Levels"
  end

  test "creating a Access level" do
    visit access_levels_url
    click_on "New Access Level"

    fill_in "Level", with: @access_level.level
    fill_in "Name", with: @access_level.name
    click_on "Create Access level"

    assert_text "Access level was successfully created"
    click_on "Back"
  end

  test "updating a Access level" do
    visit access_levels_url
    click_on "Edit", match: :first

    fill_in "Level", with: @access_level.level
    fill_in "Name", with: @access_level.name
    click_on "Update Access level"

    assert_text "Access level was successfully updated"
    click_on "Back"
  end

  test "destroying a Access level" do
    visit access_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Access level was successfully destroyed"
  end
end
