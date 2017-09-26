require 'test_helper'

class PorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pork = porks(:one)
  end

  test "should get index" do
    get porks_url
    assert_response :success
  end

  test "should get new" do
    get new_pork_url
    assert_response :success
  end

  test "should create pork" do
    assert_difference('Pork.count') do
      post porks_url, params: { pork: { description: @pork.description, price: @pork.price, title: @pork.title } }
    end

    assert_redirected_to pork_url(Pork.last)
  end

  test "should show pork" do
    get pork_url(@pork)
    assert_response :success
  end

  test "should get edit" do
    get edit_pork_url(@pork)
    assert_response :success
  end

  test "should update pork" do
    patch pork_url(@pork), params: { pork: { description: @pork.description, price: @pork.price, title: @pork.title } }
    assert_redirected_to pork_url(@pork)
  end

  test "should destroy pork" do
    assert_difference('Pork.count', -1) do
      delete pork_url(@pork)
    end

    assert_redirected_to porks_url
  end
end
