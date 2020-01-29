require "application_system_test_case"

class ListFurnituresTest < ApplicationSystemTestCase
  setup do
    @list_furniture = list_furnitures(:one)
  end

  test "visiting the index" do
    visit list_furnitures_url
    assert_selector "h1", text: "List Furnitures"
  end

  test "creating a List furniture" do
    visit list_furnitures_url
    click_on "New List Furniture"

    fill_in "Material", with: @list_furniture.material
    fill_in "Price", with: @list_furniture.price
    fill_in "Size", with: @list_furniture.size
    fill_in "Title", with: @list_furniture.title
    fill_in "Total no", with: @list_furniture.total_no
    fill_in "Type", with: @list_furniture.type
    fill_in "Url", with: @list_furniture.url
    click_on "Create List furniture"

    assert_text "List furniture was successfully created"
    click_on "Back"
  end

  test "updating a List furniture" do
    visit list_furnitures_url
    click_on "Edit", match: :first

    fill_in "Material", with: @list_furniture.material
    fill_in "Price", with: @list_furniture.price
    fill_in "Size", with: @list_furniture.size
    fill_in "Title", with: @list_furniture.title
    fill_in "Total no", with: @list_furniture.total_no
    fill_in "Type", with: @list_furniture.type
    fill_in "Url", with: @list_furniture.url
    click_on "Update List furniture"

    assert_text "List furniture was successfully updated"
    click_on "Back"
  end

  test "destroying a List furniture" do
    visit list_furnitures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List furniture was successfully destroyed"
  end
end
