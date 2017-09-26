require 'test_helper'

class SeafoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seafood = seafoods(:one)
  end

  test "should get index" do
    get seafoods_url
    assert_response :success
  end

  test "should get new" do
    get new_seafood_url
    assert_response :success
  end

  test "should create seafood" do
    assert_difference('Seafood.count') do
      post seafoods_url, params: { seafood: { description: @seafood.description, price: @seafood.price, title: @seafood.title } }
    end

    assert_redirected_to seafood_url(Seafood.last)
  end

  test "should show seafood" do
    get seafood_url(@seafood)
    assert_response :success
  end

  test "should get edit" do
    get edit_seafood_url(@seafood)
    assert_response :success
  end

  test "should update seafood" do
    patch seafood_url(@seafood), params: { seafood: { description: @seafood.description, price: @seafood.price, title: @seafood.title } }
    assert_redirected_to seafood_url(@seafood)
  end

  test "should destroy seafood" do
    assert_difference('Seafood.count', -1) do
      delete seafood_url(@seafood)
    end

    assert_redirected_to seafoods_url
  end
end
