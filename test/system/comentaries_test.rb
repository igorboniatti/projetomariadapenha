require "application_system_test_case"

class ComentariesTest < ApplicationSystemTestCase
  setup do
    @comentary = comentaries(:one)
  end

  test "visiting the index" do
    visit comentaries_url
    assert_selector "h1", text: "Comentaries"
  end

  test "creating a Comentary" do
    visit comentaries_url
    click_on "New Comentary"

    fill_in "Content", with: @comentary.content
    fill_in "Date", with: @comentary.date
    fill_in "Publication", with: @comentary.publication_id
    click_on "Create Comentary"

    assert_text "Comentary was successfully created"
    click_on "Back"
  end

  test "updating a Comentary" do
    visit comentaries_url
    click_on "Edit", match: :first

    fill_in "Content", with: @comentary.content
    fill_in "Date", with: @comentary.date
    fill_in "Publication", with: @comentary.publication_id
    click_on "Update Comentary"

    assert_text "Comentary was successfully updated"
    click_on "Back"
  end

  test "destroying a Comentary" do
    visit comentaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comentary was successfully destroyed"
  end
end
