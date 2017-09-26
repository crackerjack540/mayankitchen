require 'test_helper'

class SteaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @steak = steaks(:one)
  end

  test "should get index" do
    get steaks_url
    assert_response :success
  end

  test "should get new" do
    get new_steak_url
    assert_response :success
  end

  test "should create steak" do
    assert_difference('Steak.count') do
      post steaks_url, params: { steak: { description: @steak.description, price: @steak.price, title: @steak.title } }
    end

    assert_redirected_to steak_url(Steak.last)
  end

  test "should show steak" do
    get steak_url(@steak)
    assert_response :success
  end

  test "should get edit" do
    get edit_steak_url(@steak)
    assert_response :success
  end

  test "should update steak" do
    patch steak_url(@steak), params: { steak: { description: @steak.description, price: @steak.price, title: @steak.title } }
    assert_redirected_to steak_url(@steak)
  end

  test "should destroy steak" do
    assert_difference('Steak.count', -1) do
      delete steak_url(@steak)
    end

    assert_redirected_to steaks_url
  end
end
