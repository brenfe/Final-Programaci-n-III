require "application_system_test_case"

class BroadcastsTest < ApplicationSystemTestCase
  setup do
    @broadcast = broadcasts(:one)
  end

  test "visiting the index" do
    visit broadcasts_url
    assert_selector "h1", text: "Broadcasts"
  end

  test "creating a Broadcast" do
    visit broadcasts_url
    click_on "New Broadcast"

    fill_in "Date", with: @broadcast.date
    fill_in "Program number", with: @broadcast.program_number
    click_on "Create Broadcast"

    assert_text "Broadcast was successfully created"
    click_on "Back"
  end

  test "updating a Broadcast" do
    visit broadcasts_url
    click_on "Edit", match: :first

    fill_in "Date", with: @broadcast.date
    fill_in "Program number", with: @broadcast.program_number
    click_on "Update Broadcast"

    assert_text "Broadcast was successfully updated"
    click_on "Back"
  end

  test "destroying a Broadcast" do
    visit broadcasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Broadcast was successfully destroyed"
  end
end
