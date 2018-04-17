require 'test_helper'

class TransakcjeJaskulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transakcje_jaskula = transakcje_jaskulas(:one)
  end

  test "should get index" do
    get transakcje_jaskulas_url
    assert_response :success
  end

  test "should get new" do
    get new_transakcje_jaskula_url
    assert_response :success
  end

  test "should create transakcje_jaskula" do
    assert_difference('TransakcjeJaskula.count') do
      post transakcje_jaskulas_url, params: { transakcje_jaskula: { data: @transakcje_jaskula.data, kwota: @transakcje_jaskula.kwota, username: @transakcje_jaskula.username } }
    end

    assert_redirected_to transakcje_jaskula_url(TransakcjeJaskula.last)
  end

  test "should show transakcje_jaskula" do
    get transakcje_jaskula_url(@transakcje_jaskula)
    assert_response :success
  end

  test "should get edit" do
    get edit_transakcje_jaskula_url(@transakcje_jaskula)
    assert_response :success
  end

  test "should update transakcje_jaskula" do
    patch transakcje_jaskula_url(@transakcje_jaskula), params: { transakcje_jaskula: { data: @transakcje_jaskula.data, kwota: @transakcje_jaskula.kwota, username: @transakcje_jaskula.username } }
    assert_redirected_to transakcje_jaskula_url(@transakcje_jaskula)
  end

  test "should destroy transakcje_jaskula" do
    assert_difference('TransakcjeJaskula.count', -1) do
      delete transakcje_jaskula_url(@transakcje_jaskula)
    end

    assert_redirected_to transakcje_jaskulas_url
  end
end
