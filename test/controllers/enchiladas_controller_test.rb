require 'test_helper'

class EnchiladasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enchilada = enchiladas(:one)
  end

  test "should get index" do
    get enchiladas_index_url
    assert_response :success
  end

  test "should get new" do
    get new_enchilada_url
    assert_response :success
  end

  test "should create enchilada" do
    assert_difference('Enchiladas.count') do
      post enchiladas_index_url, params: { enchilada: { description: @enchilada.description, price: @enchilada.price, title: @enchilada.title } }
    end

    assert_redirected_to enchilada_url(Enchiladas.last)
  end

  test "should show enchilada" do
    get enchilada_url(@enchilada)
    assert_response :success
  end

  test "should get edit" do
    get edit_enchilada_url(@enchilada)
    assert_response :success
  end

  test "should update enchilada" do
    patch enchilada_url(@enchilada), params: { enchilada: { description: @enchilada.description, price: @enchilada.price, title: @enchilada.title } }
    assert_redirected_to enchilada_url(@enchilada)
  end

  test "should destroy enchilada" do
    assert_difference('Enchiladas.count', -1) do
      delete enchilada_url(@enchilada)
    end

    assert_redirected_to enchiladas_index_url
  end
end
