require "application_system_test_case"

class OriginsTest < ApplicationSystemTestCase
  setup do
    @origin = origins(:one)
  end

  test "visiting the index" do
    visit origins_url
    assert_selector "h1", text: "Origins"
  end

  test "creating a Origin" do
    visit origins_url
    click_on "New Origin"

    fill_in "Location", with: @origin.location
    fill_in "Name", with: @origin.name
    fill_in "Phone", with: @origin.phone
    click_on "Create Origin"

    assert_text "Origin was successfully created"
    click_on "Back"
  end

  test "updating a Origin" do
    visit origins_url
    click_on "Edit", match: :first

    fill_in "Location", with: @origin.location
    fill_in "Name", with: @origin.name
    fill_in "Phone", with: @origin.phone
    click_on "Update Origin"

    assert_text "Origin was successfully updated"
    click_on "Back"
  end

  test "destroying a Origin" do
    visit origins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Origin was successfully destroyed"
  end
end
