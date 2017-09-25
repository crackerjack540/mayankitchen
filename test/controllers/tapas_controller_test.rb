require 'test_helper'

class TapasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tapa = tapas(:one)
  end

  test "should get index" do
    get tapas_url
    assert_response :success
  end

  test "should get new" do
    get new_tapa_url
    assert_response :success
  end

  test "should create tapa" do
    assert_difference('Tapa.count') do
      post tapas_url, params: { tapa: { description: @tapa.description, price: @tapa.price, title: @tapa.title } }
    end

    assert_redirected_to tapa_url(Tapa.last)
  end

  test "should show tapa" do
    get tapa_url(@tapa)
    assert_response :success
  end

  test "should get edit" do
    get edit_tapa_url(@tapa)
    assert_response :success
  end

  test "should update tapa" do
    patch tapa_url(@tapa), params: { tapa: { description: @tapa.description, price: @tapa.price, title: @tapa.title } }
    assert_redirected_to tapa_url(@tapa)
  end

  test "should destroy tapa" do
    assert_difference('Tapa.count', -1) do
      delete tapa_url(@tapa)
    end

    assert_redirected_to tapas_url
  end
end
