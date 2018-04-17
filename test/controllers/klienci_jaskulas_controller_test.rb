require 'test_helper'

class KlienciJaskulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klienci_jaskula = klienci_jaskulas(:one)
  end

  test "should get index" do
    get klienci_jaskulas_url
    assert_response :success
  end

  test "should get new" do
    get new_klienci_jaskula_url
    assert_response :success
  end

  test "should create klienci_jaskula" do
    assert_difference('KlienciJaskula.count') do
      post klienci_jaskulas_url, params: { klienci_jaskula: { imie: @klienci_jaskula.imie, nazwisko: @klienci_jaskula.nazwisko, wiek: @klienci_jaskula.wiek } }
    end

    assert_redirected_to klienci_jaskula_url(KlienciJaskula.last)
  end

  test "should show klienci_jaskula" do
    get klienci_jaskula_url(@klienci_jaskula)
    assert_response :success
  end

  test "should get edit" do
    get edit_klienci_jaskula_url(@klienci_jaskula)
    assert_response :success
  end

  test "should update klienci_jaskula" do
    patch klienci_jaskula_url(@klienci_jaskula), params: { klienci_jaskula: { imie: @klienci_jaskula.imie, nazwisko: @klienci_jaskula.nazwisko, wiek: @klienci_jaskula.wiek } }
    assert_redirected_to klienci_jaskula_url(@klienci_jaskula)
  end

  test "should destroy klienci_jaskula" do
    assert_difference('KlienciJaskula.count', -1) do
      delete klienci_jaskula_url(@klienci_jaskula)
    end

    assert_redirected_to klienci_jaskulas_url
  end
end
