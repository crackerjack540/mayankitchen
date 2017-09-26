require 'test_helper'

class SidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @side = sides(:one)
  end

  test "should get index" do
    get sides_url
    assert_response :success
  end

  test "should get new" do
    get new_side_url
    assert_response :success
  end

  test "should create side" do
    assert_difference('Side.count') do
      post sides_url, params: { side: { description: @side.description, price: @side.price, title: @side.title } }
    end

    assert_redirected_to side_url(Side.last)
  end

  test "should show side" do
    get side_url(@side)
    assert_response :success
  end

  test "should get edit" do
    get edit_side_url(@side)
    assert_response :success
  end

  test "should update side" do
    patch side_url(@side), params: { side: { description: @side.description, price: @side.price, title: @side.title } }
    assert_redirected_to side_url(@side)
  end

  test "should destroy side" do
    assert_difference('Side.count', -1) do
      delete side_url(@side)
    end

    assert_redirected_to sides_url
  end
end
