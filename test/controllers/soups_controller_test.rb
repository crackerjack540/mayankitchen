require 'test_helper'

class SoupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soup = soups(:one)
  end

  test "should get index" do
    get soups_url
    assert_response :success
  end

  test "should get new" do
    get new_soup_url
    assert_response :success
  end

  test "should create soup" do
    assert_difference('Soup.count') do
      post soups_url, params: { soup: { description: @soup.description, price: @soup.price, title: @soup.title } }
    end

    assert_redirected_to soup_url(Soup.last)
  end

  test "should show soup" do
    get soup_url(@soup)
    assert_response :success
  end

  test "should get edit" do
    get edit_soup_url(@soup)
    assert_response :success
  end

  test "should update soup" do
    patch soup_url(@soup), params: { soup: { description: @soup.description, price: @soup.price, title: @soup.title } }
    assert_redirected_to soup_url(@soup)
  end

  test "should destroy soup" do
    assert_difference('Soup.count', -1) do
      delete soup_url(@soup)
    end

    assert_redirected_to soups_url
  end
end
