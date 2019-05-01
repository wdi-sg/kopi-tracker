require "application_system_test_case"

class KopisTest < ApplicationSystemTestCase
  setup do
    @kopi = kopis(:one)
  end

  test "visiting the index" do
    visit kopis_url
    assert_selector "h1", text: "Kopis"
  end

  test "creating a Kopi" do
    visit kopis_url
    click_on "New Kopi"

    fill_in "Name", with: @kopi.name
    fill_in "References", with: @kopi.references
    click_on "Create Kopi"

    assert_text "Kopi was successfully created"
    click_on "Back"
  end

  test "updating a Kopi" do
    visit kopis_url
    click_on "Edit", match: :first

    fill_in "Name", with: @kopi.name
    fill_in "References", with: @kopi.references
    click_on "Update Kopi"

    assert_text "Kopi was successfully updated"
    click_on "Back"
  end

  test "destroying a Kopi" do
    visit kopis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kopi was successfully destroyed"
  end
end
