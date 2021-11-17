require 'test_helper'

class FistulaRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fistula_register = fistula_registers(:one)
  end

  test "should get index" do
    get fistula_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_fistula_register_url
    assert_response :success
  end

  test "should create fistula_register" do
    assert_difference('FistulaRegister.count') do
      post fistula_registers_url, params: { fistula_register: { Location: @fistula_register.Location, Marital_status: @fistula_register.Marital_status, Name: @fistula_register.Name, Next_of_Kin: @fistula_register.Next_of_Kin, Region: @fistula_register.Region, Telephone: @fistula_register.Telephone } }
    end

    assert_redirected_to fistula_register_url(FistulaRegister.last)
  end

  test "should show fistula_register" do
    get fistula_register_url(@fistula_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_fistula_register_url(@fistula_register)
    assert_response :success
  end

  test "should update fistula_register" do
    patch fistula_register_url(@fistula_register), params: { fistula_register: { Location: @fistula_register.Location, Marital_status: @fistula_register.Marital_status, Name: @fistula_register.Name, Next_of_Kin: @fistula_register.Next_of_Kin, Region: @fistula_register.Region, Telephone: @fistula_register.Telephone } }
    assert_redirected_to fistula_register_url(@fistula_register)
  end

  test "should destroy fistula_register" do
    assert_difference('FistulaRegister.count', -1) do
      delete fistula_register_url(@fistula_register)
    end

    assert_redirected_to fistula_registers_url
  end
end
