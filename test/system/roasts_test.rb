require "application_system_test_case"

class RoastsTest < ApplicationSystemTestCase
  setup do
    @roast = roasts(:one)
  end

  test "visiting the index" do
    visit roasts_url
    assert_selector "h1", text: "Roasts"
  end

  test "creating a Roast" do
    visit roasts_url
    click_on "New Roast"

    fill_in "Level", with: @roast.level
    fill_in "Name", with: @roast.name
    click_on "Create Roast"

    assert_text "Roast was successfully created"
    click_on "Back"
  end

  test "updating a Roast" do
    visit roasts_url
    click_on "Edit", match: :first

    fill_in "Level", with: @roast.level
    fill_in "Name", with: @roast.name
    click_on "Update Roast"

    assert_text "Roast was successfully updated"
    click_on "Back"
  end

  test "destroying a Roast" do
    visit roasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roast was successfully destroyed"
  end
end
