require "application_system_test_case"

class DoubtsTest < ApplicationSystemTestCase
  setup do
    @doubt = doubts(:one)
  end

  test "visiting the index" do
    visit doubts_url
    assert_selector "h1", text: "Doubts"
  end

  test "creating a Doubt" do
    visit doubts_url
    click_on "New Doubt"

    fill_in "Answer", with: @doubt.answer
    fill_in "Question", with: @doubt.question_id
    click_on "Create Doubt"

    assert_text "Doubt was successfully created"
    click_on "Back"
  end

  test "updating a Doubt" do
    visit doubts_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @doubt.answer
    fill_in "Question", with: @doubt.question_id
    click_on "Update Doubt"

    assert_text "Doubt was successfully updated"
    click_on "Back"
  end

  test "destroying a Doubt" do
    visit doubts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doubt was successfully destroyed"
  end
end
