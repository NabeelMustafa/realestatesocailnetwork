require "application_system_test_case"

class ListArtsTest < ApplicationSystemTestCase
  setup do
    @list_art = list_arts(:one)
  end

  test "visiting the index" do
    visit list_arts_url
    assert_selector "h1", text: "List Arts"
  end

  test "creating a List art" do
    visit list_arts_url
    click_on "New List Art"

    fill_in "Art name", with: @list_art.art_name
    fill_in "Description", with: @list_art.description
    fill_in "Price", with: @list_art.price
    fill_in "Size", with: @list_art.size
    fill_in "Type", with: @list_art.type
    fill_in "Url", with: @list_art.url
    click_on "Create List art"

    assert_text "List art was successfully created"
    click_on "Back"
  end

  test "updating a List art" do
    visit list_arts_url
    click_on "Edit", match: :first

    fill_in "Art name", with: @list_art.art_name
    fill_in "Description", with: @list_art.description
    fill_in "Price", with: @list_art.price
    fill_in "Size", with: @list_art.size
    fill_in "Type", with: @list_art.type
    fill_in "Url", with: @list_art.url
    click_on "Update List art"

    assert_text "List art was successfully updated"
    click_on "Back"
  end

  test "destroying a List art" do
    visit list_arts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List art was successfully destroyed"
  end
end
