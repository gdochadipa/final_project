require "application_system_test_case"

class DispositonsTest < ApplicationSystemTestCase
  setup do
    @dispositon = dispositons(:one)
  end

  test "visiting the index" do
    visit dispositons_url
    assert_selector "h1", text: "Dispositons"
  end

  test "creating a Dispositon" do
    visit dispositons_url
    click_on "New Dispositon"

    fill_in "Comment", with: @dispositon.comment
    fill_in "Dispocode", with: @dispositon.dispocode
    fill_in "Inmail", with: @dispositon.inmail_id
    fill_in "Status", with: @dispositon.status
    fill_in "To", with: @dispositon.to
    fill_in "User", with: @dispositon.user_id
    click_on "Create Dispositon"

    assert_text "Dispositon was successfully created"
    click_on "Back"
  end

  test "updating a Dispositon" do
    visit dispositons_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @dispositon.comment
    fill_in "Dispocode", with: @dispositon.dispocode
    fill_in "Inmail", with: @dispositon.inmail_id
    fill_in "Status", with: @dispositon.status
    fill_in "To", with: @dispositon.to
    fill_in "User", with: @dispositon.user_id
    click_on "Update Dispositon"

    assert_text "Dispositon was successfully updated"
    click_on "Back"
  end

  test "destroying a Dispositon" do
    visit dispositons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dispositon was successfully destroyed"
  end
end
