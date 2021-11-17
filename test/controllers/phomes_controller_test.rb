require 'test_helper'

class PhomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phome = phomes(:one)
  end

  test "should get index" do
    get phomes_url
    assert_response :success
  end

  test "should get new" do
    get new_phome_url
    assert_response :success
  end

  test "should create phome" do
    assert_difference('Phome.count') do
      post phomes_url, params: { phome: { desc: @phome.desc } }
    end

    assert_redirected_to phome_url(Phome.last)
  end

  test "should show phome" do
    get phome_url(@phome)
    assert_response :success
  end

  test "should get edit" do
    get edit_phome_url(@phome)
    assert_response :success
  end

  test "should update phome" do
    patch phome_url(@phome), params: { phome: { desc: @phome.desc } }
    assert_redirected_to phome_url(@phome)
  end

  test "should destroy phome" do
    assert_difference('Phome.count', -1) do
      delete phome_url(@phome)
    end

    assert_redirected_to phomes_url
  end
end
