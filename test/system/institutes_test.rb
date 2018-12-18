require "application_system_test_case"

class InstitutesTest < ApplicationSystemTestCase
  setup do
    @institute = institutes(:one)
  end

  test "visiting the index" do
    visit institutes_url
    assert_selector "h1", text: "Institutes"
  end

  test "creating a Institute" do
    visit institutes_url
    click_on "New Institute"

    fill_in "Address", with: @institute.address_id
    fill_in "Attendance Locals", with: @institute.attendance_locals
    fill_in "Description", with: @institute.description
    fill_in "Email", with: @institute.email
    fill_in "Name", with: @institute.name
    fill_in "Note", with: @institute.note
    fill_in "Phone", with: @institute.phone_id
    click_on "Create Institute"

    assert_text "Institute was successfully created"
    click_on "Back"
  end

  test "updating a Institute" do
    visit institutes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @institute.address_id
    fill_in "Attendance Locals", with: @institute.attendance_locals
    fill_in "Description", with: @institute.description
    fill_in "Email", with: @institute.email
    fill_in "Name", with: @institute.name
    fill_in "Note", with: @institute.note
    fill_in "Phone", with: @institute.phone_id
    click_on "Update Institute"

    assert_text "Institute was successfully updated"
    click_on "Back"
  end

  test "destroying a Institute" do
    visit institutes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Institute was successfully destroyed"
  end
end
