require 'test_helper'

class AppetizersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appetizer = appetizers(:one)
  end

  test "should get index" do
    get appetizers_url
    assert_response :success
  end

  test "should get new" do
    get new_appetizer_url
    assert_response :success
  end

  test "should create appetizer" do
    assert_difference('Appetizer.count') do
      post appetizers_url, params: { appetizer: { description: @appetizer.description, price: @appetizer.price, title: @appetizer.title } }
    end

    assert_redirected_to appetizer_url(Appetizer.last)
  end

  test "should show appetizer" do
    get appetizer_url(@appetizer)
    assert_response :success
  end

  test "should get edit" do
    get edit_appetizer_url(@appetizer)
    assert_response :success
  end

  test "should update appetizer" do
    patch appetizer_url(@appetizer), params: { appetizer: { description: @appetizer.description, price: @appetizer.price, title: @appetizer.title } }
    assert_redirected_to appetizer_url(@appetizer)
  end

  test "should destroy appetizer" do
    assert_difference('Appetizer.count', -1) do
      delete appetizer_url(@appetizer)
    end

    assert_redirected_to appetizers_url
  end
end
