require "application_system_test_case"

class OutmailsTest < ApplicationSystemTestCase
  setup do
    @outmail = outmails(:one)
  end

  test "visiting the index" do
    visit outmails_url
    assert_selector "h1", text: "Outmails"
  end

  test "creating a Outmail" do
    visit outmails_url
    click_on "New Outmail"

    fill_in "Datesend", with: @outmail.datesend
    fill_in "Mailtext", with: @outmail.mailtext
    fill_in "Response", with: @outmail.response
    fill_in "Title", with: @outmail.title
    fill_in "To", with: @outmail.to
    click_on "Create Outmail"

    assert_text "Outmail was successfully created"
    click_on "Back"
  end

  test "updating a Outmail" do
    visit outmails_url
    click_on "Edit", match: :first

    fill_in "Datesend", with: @outmail.datesend
    fill_in "Mailtext", with: @outmail.mailtext
    fill_in "Response", with: @outmail.response
    fill_in "Title", with: @outmail.title
    fill_in "To", with: @outmail.to
    click_on "Update Outmail"

    assert_text "Outmail was successfully updated"
    click_on "Back"
  end

  test "destroying a Outmail" do
    visit outmails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outmail was successfully destroyed"
  end
end
