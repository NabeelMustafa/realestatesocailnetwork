require 'test_helper'

class ListFurnituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_furniture = list_furnitures(:one)
  end

  test "should get index" do
    get list_furnitures_url
    assert_response :success
  end

  test "should get new" do
    get new_list_furniture_url
    assert_response :success
  end

  test "should create list_furniture" do
    assert_difference('ListFurniture.count') do
      post list_furnitures_url, params: { list_furniture: { material: @list_furniture.material, price: @list_furniture.price, size: @list_furniture.size, title: @list_furniture.title, total_no: @list_furniture.total_no, type: @list_furniture.type, url: @list_furniture.url } }
    end

    assert_redirected_to list_furniture_url(ListFurniture.last)
  end

  test "should show list_furniture" do
    get list_furniture_url(@list_furniture)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_furniture_url(@list_furniture)
    assert_response :success
  end

  test "should update list_furniture" do
    patch list_furniture_url(@list_furniture), params: { list_furniture: { material: @list_furniture.material, price: @list_furniture.price, size: @list_furniture.size, title: @list_furniture.title, total_no: @list_furniture.total_no, type: @list_furniture.type, url: @list_furniture.url } }
    assert_redirected_to list_furniture_url(@list_furniture)
  end

  test "should destroy list_furniture" do
    assert_difference('ListFurniture.count', -1) do
      delete list_furniture_url(@list_furniture)
    end

    assert_redirected_to list_furnitures_url
  end
end
