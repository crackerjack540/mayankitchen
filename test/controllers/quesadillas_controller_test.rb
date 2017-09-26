require 'test_helper'

class QuesadillasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quesadilla = quesadillas(:one)
  end

  test "should get index" do
    get quesadillas_index_url
    assert_response :success
  end

  test "should get new" do
    get new_quesadilla_url
    assert_response :success
  end

  test "should create quesadilla" do
    assert_difference('Quesadillas.count') do
      post quesadillas_index_url, params: { quesadilla: { description: @quesadilla.description, price: @quesadilla.price, title: @quesadilla.title } }
    end

    assert_redirected_to quesadilla_url(Quesadillas.last)
  end

  test "should show quesadilla" do
    get quesadilla_url(@quesadilla)
    assert_response :success
  end

  test "should get edit" do
    get edit_quesadilla_url(@quesadilla)
    assert_response :success
  end

  test "should update quesadilla" do
    patch quesadilla_url(@quesadilla), params: { quesadilla: { description: @quesadilla.description, price: @quesadilla.price, title: @quesadilla.title } }
    assert_redirected_to quesadilla_url(@quesadilla)
  end

  test "should destroy quesadilla" do
    assert_difference('Quesadillas.count', -1) do
      delete quesadilla_url(@quesadilla)
    end

    assert_redirected_to quesadillas_index_url
  end
end
