require 'test_helper'

class RentalListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_list = rental_lists(:one)
  end

  test "should get index" do
    get rental_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_list_url
    assert_response :success
  end

  test "should create rental_list" do
    assert_difference('RentalList.count') do
      post rental_lists_url, params: { rental_list: { address: @rental_list.address, bathrooms_no: @rental_list.bathrooms_no, beedrooms_no: @rental_list.beedrooms_no, city: @rental_list.city, country: @rental_list.country, descritption: @rental_list.descritption, guest_no_acc: @rental_list.guest_no_acc, is_dedicated: @rental_list.is_dedicated, location: @rental_list.location, person_capicty: @rental_list.person_capicty, postal_code: @rental_list.postal_code, propert_type: @rental_list.propert_type, property_type_cat: @rental_list.property_type_cat, room_type: @rental_list.room_type, state: @rental_list.state, title: @rental_list.title } }
    end

    assert_redirected_to rental_list_url(RentalList.last)
  end

  test "should show rental_list" do
    get rental_list_url(@rental_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_list_url(@rental_list)
    assert_response :success
  end

  test "should update rental_list" do
    patch rental_list_url(@rental_list), params: { rental_list: { address: @rental_list.address, bathrooms_no: @rental_list.bathrooms_no, beedrooms_no: @rental_list.beedrooms_no, city: @rental_list.city, country: @rental_list.country, descritption: @rental_list.descritption, guest_no_acc: @rental_list.guest_no_acc, is_dedicated: @rental_list.is_dedicated, location: @rental_list.location, person_capicty: @rental_list.person_capicty, postal_code: @rental_list.postal_code, propert_type: @rental_list.propert_type, property_type_cat: @rental_list.property_type_cat, room_type: @rental_list.room_type, state: @rental_list.state, title: @rental_list.title } }
    assert_redirected_to rental_list_url(@rental_list)
  end

  test "should destroy rental_list" do
    assert_difference('RentalList.count', -1) do
      delete rental_list_url(@rental_list)
    end

    assert_redirected_to rental_lists_url
  end
end
