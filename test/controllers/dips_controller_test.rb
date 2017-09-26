require 'test_helper'

class DipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dip = dips(:one)
  end

  test "should get index" do
    get dips_url
    assert_response :success
  end

  test "should get new" do
    get new_dip_url
    assert_response :success
  end

  test "should create dip" do
    assert_difference('Dip.count') do
      post dips_url, params: { dip: { description: @dip.description, price: @dip.price, title: @dip.title } }
    end

    assert_redirected_to dip_url(Dip.last)
  end

  test "should show dip" do
    get dip_url(@dip)
    assert_response :success
  end

  test "should get edit" do
    get edit_dip_url(@dip)
    assert_response :success
  end

  test "should update dip" do
    patch dip_url(@dip), params: { dip: { description: @dip.description, price: @dip.price, title: @dip.title } }
    assert_redirected_to dip_url(@dip)
  end

  test "should destroy dip" do
    assert_difference('Dip.count', -1) do
      delete dip_url(@dip)
    end

    assert_redirected_to dips_url
  end
end
