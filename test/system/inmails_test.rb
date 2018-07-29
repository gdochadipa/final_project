require "application_system_test_case"

class InmailsTest < ApplicationSystemTestCase
  setup do
    @inmail = inmails(:one)
  end

  test "visiting the index" do
    visit inmails_url
    assert_selector "h1", text: "Inmails"
  end

  test "creating a Inmail" do
    visit inmails_url
    click_on "New Inmail"

    fill_in "Datecoming", with: @inmail.datecoming
    fill_in "Dispo", with: @inmail.dispo_id
    fill_in "From", with: @inmail.from
    fill_in "Mailtext", with: @inmail.mailtext
    fill_in "Response", with: @inmail.response
    fill_in "Title", with: @inmail.title
    fill_in "To", with: @inmail.to
    click_on "Create Inmail"

    assert_text "Inmail was successfully created"
    click_on "Back"
  end

  test "updating a Inmail" do
    visit inmails_url
    click_on "Edit", match: :first

    fill_in "Datecoming", with: @inmail.datecoming
    fill_in "Dispo", with: @inmail.dispo_id
    fill_in "From", with: @inmail.from
    fill_in "Mailtext", with: @inmail.mailtext
    fill_in "Response", with: @inmail.response
    fill_in "Title", with: @inmail.title
    fill_in "To", with: @inmail.to
    click_on "Update Inmail"

    assert_text "Inmail was successfully updated"
    click_on "Back"
  end

  test "destroying a Inmail" do
    visit inmails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inmail was successfully destroyed"
  end
end
