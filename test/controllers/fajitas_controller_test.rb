require 'test_helper'

class FajitasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fajita = fajitas(:one)
  end

  test "should get index" do
    get fajitas_index_url
    assert_response :success
  end

  test "should get new" do
    get new_fajita_url
    assert_response :success
  end

  test "should create fajita" do
    assert_difference('Fajitas.count') do
      post fajitas_index_url, params: { fajita: { description: @fajita.description, price: @fajita.price, title: @fajita.title } }
    end

    assert_redirected_to fajita_url(Fajitas.last)
  end

  test "should show fajita" do
    get fajita_url(@fajita)
    assert_response :success
  end

  test "should get edit" do
    get edit_fajita_url(@fajita)
    assert_response :success
  end

  test "should update fajita" do
    patch fajita_url(@fajita), params: { fajita: { description: @fajita.description, price: @fajita.price, title: @fajita.title } }
    assert_redirected_to fajita_url(@fajita)
  end

  test "should destroy fajita" do
    assert_difference('Fajitas.count', -1) do
      delete fajita_url(@fajita)
    end

    assert_redirected_to fajitas_index_url
  end
end
