require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, building_year: @property.building_year, cooling: @property.cooling, description: @property.description, exersie_room: @property.exersie_room, friendly_address: @property.friendly_address, google_map_address: @property.google_map_address, latitude: @property.latitude, longtitude: @property.longtitude, lot_size: @property.lot_size, offer: @property.offer, parking: @property.parking, propert_area: @property.propert_area, property_price: @property.property_price, property_room: @property.property_room, property_type: @property.property_type, region: @property.region, rental_period: @property.rental_period, sewer: @property.sewer, title: @property.title, water: @property.water } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, building_year: @property.building_year, cooling: @property.cooling, description: @property.description, exersie_room: @property.exersie_room, friendly_address: @property.friendly_address, google_map_address: @property.google_map_address, latitude: @property.latitude, longtitude: @property.longtitude, lot_size: @property.lot_size, offer: @property.offer, parking: @property.parking, propert_area: @property.propert_area, property_price: @property.property_price, property_room: @property.property_room, property_type: @property.property_type, region: @property.region, rental_period: @property.rental_period, sewer: @property.sewer, title: @property.title, water: @property.water } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
