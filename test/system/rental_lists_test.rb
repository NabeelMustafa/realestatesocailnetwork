require "application_system_test_case"

class RentalListsTest < ApplicationSystemTestCase
  setup do
    @rental_list = rental_lists(:one)
  end

  test "visiting the index" do
    visit rental_lists_url
    assert_selector "h1", text: "Rental Lists"
  end

  test "creating a Rental list" do
    visit rental_lists_url
    click_on "New Rental List"

    fill_in "Address", with: @rental_list.address
    fill_in "Bathrooms no", with: @rental_list.bathrooms_no
    fill_in "Beedrooms no", with: @rental_list.beedrooms_no
    fill_in "City", with: @rental_list.city
    fill_in "Country", with: @rental_list.country
    fill_in "Descritption", with: @rental_list.descritption
    fill_in "Guest no acc", with: @rental_list.guest_no_acc
    check "Is dedicated" if @rental_list.is_dedicated
    fill_in "Location", with: @rental_list.location
    fill_in "Person capicty", with: @rental_list.person_capicty
    fill_in "Postal code", with: @rental_list.postal_code
    fill_in "Propert type", with: @rental_list.propert_type
    fill_in "Property type cat", with: @rental_list.property_type_cat
    fill_in "Room type", with: @rental_list.room_type
    fill_in "State", with: @rental_list.state
    fill_in "Title", with: @rental_list.title
    click_on "Create Rental list"

    assert_text "Rental list was successfully created"
    click_on "Back"
  end

  test "updating a Rental list" do
    visit rental_lists_url
    click_on "Edit", match: :first

    fill_in "Address", with: @rental_list.address
    fill_in "Bathrooms no", with: @rental_list.bathrooms_no
    fill_in "Beedrooms no", with: @rental_list.beedrooms_no
    fill_in "City", with: @rental_list.city
    fill_in "Country", with: @rental_list.country
    fill_in "Descritption", with: @rental_list.descritption
    fill_in "Guest no acc", with: @rental_list.guest_no_acc
    check "Is dedicated" if @rental_list.is_dedicated
    fill_in "Location", with: @rental_list.location
    fill_in "Person capicty", with: @rental_list.person_capicty
    fill_in "Postal code", with: @rental_list.postal_code
    fill_in "Propert type", with: @rental_list.propert_type
    fill_in "Property type cat", with: @rental_list.property_type_cat
    fill_in "Room type", with: @rental_list.room_type
    fill_in "State", with: @rental_list.state
    fill_in "Title", with: @rental_list.title
    click_on "Update Rental list"

    assert_text "Rental list was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental list" do
    visit rental_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental list was successfully destroyed"
  end
end
