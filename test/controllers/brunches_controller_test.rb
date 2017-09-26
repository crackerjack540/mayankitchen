require 'test_helper'

class BrunchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brunch = brunches(:one)
  end

  test "should get index" do
    get brunches_url
    assert_response :success
  end

  test "should get new" do
    get new_brunch_url
    assert_response :success
  end

  test "should create brunch" do
    assert_difference('Brunch.count') do
      post brunches_url, params: { brunch: { description: @brunch.description, price: @brunch.price, title: @brunch.title } }
    end

    assert_redirected_to brunch_url(Brunch.last)
  end

  test "should show brunch" do
    get brunch_url(@brunch)
    assert_response :success
  end

  test "should get edit" do
    get edit_brunch_url(@brunch)
    assert_response :success
  end

  test "should update brunch" do
    patch brunch_url(@brunch), params: { brunch: { description: @brunch.description, price: @brunch.price, title: @brunch.title } }
    assert_redirected_to brunch_url(@brunch)
  end

  test "should destroy brunch" do
    assert_difference('Brunch.count', -1) do
      delete brunch_url(@brunch)
    end

    assert_redirected_to brunches_url
  end
end
