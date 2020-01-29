require 'test_helper'

class ListSellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_sell = list_sells(:one)
  end

  test "should get index" do
    get list_sells_url
    assert_response :success
  end

  test "should get new" do
    get new_list_sell_url
    assert_response :success
  end

  test "should create list_sell" do
    assert_difference('ListSell.count') do
      post list_sells_url, params: { list_sell: { address: @list_sell.address, basement_area: @list_sell.basement_area, city: @list_sell.city, description: @list_sell.description, email: @list_sell.email, finished_sq: @list_sell.finished_sq, garage_area: @list_sell.garage_area, hoa_dues: @list_sell.hoa_dues, home_type: @list_sell.home_type, lot_size: @list_sell.lot_size, my_views: @list_sell.my_views, no_bed: @list_sell.no_bed, no_f_bath: @list_sell.no_f_bath, no_h_bath: @list_sell.no_h_bath, no_q_bath: @list_sell.no_q_bath, ph_no: @list_sell.ph_no, price: @list_sell.price, remodel_year: @list_sell.remodel_year, state: @list_sell.state, unit: @list_sell.unit, virtual_tour_link: @list_sell.virtual_tour_link, website: @list_sell.website, year_built: @list_sell.year_built, zip: @list_sell.zip } }
    end

    assert_redirected_to list_sell_url(ListSell.last)
  end

  test "should show list_sell" do
    get list_sell_url(@list_sell)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_sell_url(@list_sell)
    assert_response :success
  end

  test "should update list_sell" do
    patch list_sell_url(@list_sell), params: { list_sell: { address: @list_sell.address, basement_area: @list_sell.basement_area, city: @list_sell.city, description: @list_sell.description, email: @list_sell.email, finished_sq: @list_sell.finished_sq, garage_area: @list_sell.garage_area, hoa_dues: @list_sell.hoa_dues, home_type: @list_sell.home_type, lot_size: @list_sell.lot_size, my_views: @list_sell.my_views, no_bed: @list_sell.no_bed, no_f_bath: @list_sell.no_f_bath, no_h_bath: @list_sell.no_h_bath, no_q_bath: @list_sell.no_q_bath, ph_no: @list_sell.ph_no, price: @list_sell.price, remodel_year: @list_sell.remodel_year, state: @list_sell.state, unit: @list_sell.unit, virtual_tour_link: @list_sell.virtual_tour_link, website: @list_sell.website, year_built: @list_sell.year_built, zip: @list_sell.zip } }
    assert_redirected_to list_sell_url(@list_sell)
  end

  test "should destroy list_sell" do
    assert_difference('ListSell.count', -1) do
      delete list_sell_url(@list_sell)
    end

    assert_redirected_to list_sells_url
  end
end
