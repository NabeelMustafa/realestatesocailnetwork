require 'test_helper'

class ListArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_art = list_arts(:one)
  end

  test "should get index" do
    get list_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_list_art_url
    assert_response :success
  end

  test "should create list_art" do
    assert_difference('ListArt.count') do
      post list_arts_url, params: { list_art: { art_name: @list_art.art_name, description: @list_art.description, price: @list_art.price, size: @list_art.size, type: @list_art.type, url: @list_art.url } }
    end

    assert_redirected_to list_art_url(ListArt.last)
  end

  test "should show list_art" do
    get list_art_url(@list_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_art_url(@list_art)
    assert_response :success
  end

  test "should update list_art" do
    patch list_art_url(@list_art), params: { list_art: { art_name: @list_art.art_name, description: @list_art.description, price: @list_art.price, size: @list_art.size, type: @list_art.type, url: @list_art.url } }
    assert_redirected_to list_art_url(@list_art)
  end

  test "should destroy list_art" do
    assert_difference('ListArt.count', -1) do
      delete list_art_url(@list_art)
    end

    assert_redirected_to list_arts_url
  end
end
