require 'test_helper'

class InfoJaskulaControllerTest < ActionDispatch::IntegrationTest
  test "should get wyswietl" do
    get info_jaskula_wyswietl_url
    assert_response :success
  end

end
