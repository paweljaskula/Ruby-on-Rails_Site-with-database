require 'test_helper'

class ZasobyJaskulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zasoby_jaskula = zasoby_jaskulas(:one)
  end

  test "should get index" do
    get zasoby_jaskulas_url
    assert_response :success
  end

  test "should get new" do
    get new_zasoby_jaskula_url
    assert_response :success
  end

  test "should create zasoby_jaskula" do
    assert_difference('ZasobyJaskula.count') do
      post zasoby_jaskulas_url, params: { zasoby_jaskula: { cena: @zasoby_jaskula.cena, nazwa: @zasoby_jaskula.nazwa } }
    end

    assert_redirected_to zasoby_jaskula_url(ZasobyJaskula.last)
  end

  test "should show zasoby_jaskula" do
    get zasoby_jaskula_url(@zasoby_jaskula)
    assert_response :success
  end

  test "should get edit" do
    get edit_zasoby_jaskula_url(@zasoby_jaskula)
    assert_response :success
  end

  test "should update zasoby_jaskula" do
    patch zasoby_jaskula_url(@zasoby_jaskula), params: { zasoby_jaskula: { cena: @zasoby_jaskula.cena, nazwa: @zasoby_jaskula.nazwa } }
    assert_redirected_to zasoby_jaskula_url(@zasoby_jaskula)
  end

  test "should destroy zasoby_jaskula" do
    assert_difference('ZasobyJaskula.count', -1) do
      delete zasoby_jaskula_url(@zasoby_jaskula)
    end

    assert_redirected_to zasoby_jaskulas_url
  end
end
