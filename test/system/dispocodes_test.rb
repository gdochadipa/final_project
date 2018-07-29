require "application_system_test_case"

class DispocodesTest < ApplicationSystemTestCase
  setup do
    @dispocode = dispocodes(:one)
  end

  test "visiting the index" do
    visit dispocodes_url
    assert_selector "h1", text: "Dispocodes"
  end

  test "creating a Dispocode" do
    visit dispocodes_url
    click_on "New Dispocode"

    fill_in "Dispo Title", with: @dispocode.dispo_title
    click_on "Create Dispocode"

    assert_text "Dispocode was successfully created"
    click_on "Back"
  end

  test "updating a Dispocode" do
    visit dispocodes_url
    click_on "Edit", match: :first

    fill_in "Dispo Title", with: @dispocode.dispo_title
    click_on "Update Dispocode"

    assert_text "Dispocode was successfully updated"
    click_on "Back"
  end

  test "destroying a Dispocode" do
    visit dispocodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dispocode was successfully destroyed"
  end
end
