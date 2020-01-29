require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Bathrooms", with: @property.bathrooms
    fill_in "Bedrooms", with: @property.bedrooms
    fill_in "Building year", with: @property.building_year
    fill_in "Cooling", with: @property.cooling
    fill_in "Description", with: @property.description
    fill_in "Exersie room", with: @property.exersie_room
    fill_in "Friendly address", with: @property.friendly_address
    fill_in "Google map address", with: @property.google_map_address
    fill_in "Latitude", with: @property.latitude
    fill_in "Longtitude", with: @property.longtitude
    fill_in "Lot size", with: @property.lot_size
    fill_in "Offer", with: @property.offer
    fill_in "Parking", with: @property.parking
    fill_in "Propert area", with: @property.propert_area
    fill_in "Property price", with: @property.property_price
    fill_in "Property room", with: @property.property_room
    fill_in "Property type", with: @property.property_type
    fill_in "Region", with: @property.region
    fill_in "Rental period", with: @property.rental_period
    fill_in "Sewer", with: @property.sewer
    fill_in "Title", with: @property.title
    fill_in "Water", with: @property.water
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Bathrooms", with: @property.bathrooms
    fill_in "Bedrooms", with: @property.bedrooms
    fill_in "Building year", with: @property.building_year
    fill_in "Cooling", with: @property.cooling
    fill_in "Description", with: @property.description
    fill_in "Exersie room", with: @property.exersie_room
    fill_in "Friendly address", with: @property.friendly_address
    fill_in "Google map address", with: @property.google_map_address
    fill_in "Latitude", with: @property.latitude
    fill_in "Longtitude", with: @property.longtitude
    fill_in "Lot size", with: @property.lot_size
    fill_in "Offer", with: @property.offer
    fill_in "Parking", with: @property.parking
    fill_in "Propert area", with: @property.propert_area
    fill_in "Property price", with: @property.property_price
    fill_in "Property room", with: @property.property_room
    fill_in "Property type", with: @property.property_type
    fill_in "Region", with: @property.region
    fill_in "Rental period", with: @property.rental_period
    fill_in "Sewer", with: @property.sewer
    fill_in "Title", with: @property.title
    fill_in "Water", with: @property.water
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
