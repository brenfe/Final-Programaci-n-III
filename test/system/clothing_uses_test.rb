require "application_system_test_case"

class ClothingUsesTest < ApplicationSystemTestCase
  setup do
    @clothing_use = clothing_uses(:one)
  end

  test "visiting the index" do
    visit clothing_uses_url
    assert_selector "h1", text: "Clothing Uses"
  end

  test "creating a Clothing use" do
    visit clothing_uses_url
    click_on "New Clothing Use"

    fill_in "Broadcast", with: @clothing_use.broadcast_id
    fill_in "Garment", with: @clothing_use.garment_id
    fill_in "Host", with: @clothing_use.host_id
    click_on "Create Clothing use"

    assert_text "Clothing use was successfully created"
    click_on "Back"
  end

  test "updating a Clothing use" do
    visit clothing_uses_url
    click_on "Edit", match: :first

    fill_in "Broadcast", with: @clothing_use.broadcast_id
    fill_in "Garment", with: @clothing_use.garment_id
    fill_in "Host", with: @clothing_use.host_id
    click_on "Update Clothing use"

    assert_text "Clothing use was successfully updated"
    click_on "Back"
  end

  test "destroying a Clothing use" do
    visit clothing_uses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clothing use was successfully destroyed"
  end
end
