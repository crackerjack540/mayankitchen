require 'test_helper'

class ChimichangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chimichanga = chimichangas(:one)
  end

  test "should get index" do
    get chimichangas_index_url
    assert_response :success
  end

  test "should get new" do
    get new_chimichanga_url
    assert_response :success
  end

  test "should create chimichanga" do
    assert_difference('Chimichangas.count') do
      post chimichangas_index_url, params: { chimichanga: { description: @chimichanga.description, price: @chimichanga.price, title: @chimichanga.title } }
    end

    assert_redirected_to chimichanga_url(Chimichangas.last)
  end

  test "should show chimichanga" do
    get chimichanga_url(@chimichanga)
    assert_response :success
  end

  test "should get edit" do
    get edit_chimichanga_url(@chimichanga)
    assert_response :success
  end

  test "should update chimichanga" do
    patch chimichanga_url(@chimichanga), params: { chimichanga: { description: @chimichanga.description, price: @chimichanga.price, title: @chimichanga.title } }
    assert_redirected_to chimichanga_url(@chimichanga)
  end

  test "should destroy chimichanga" do
    assert_difference('Chimichangas.count', -1) do
      delete chimichanga_url(@chimichanga)
    end

    assert_redirected_to chimichangas_index_url
  end
end
