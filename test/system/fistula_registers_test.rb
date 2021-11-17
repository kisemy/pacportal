require "application_system_test_case"

class FistulaRegistersTest < ApplicationSystemTestCase
  setup do
    @fistula_register = fistula_registers(:one)
  end

  test "visiting the index" do
    visit fistula_registers_url
    assert_selector "h1", text: "Fistula Registers"
  end

  test "creating a Fistula register" do
    visit fistula_registers_url
    click_on "New Fistula Register"

    fill_in "Location", with: @fistula_register.Location
    fill_in "Marital status", with: @fistula_register.Marital_status
    fill_in "Name", with: @fistula_register.Name
    fill_in "Next of kin", with: @fistula_register.Next_of_Kin
    fill_in "Region", with: @fistula_register.Region
    fill_in "Telephone", with: @fistula_register.Telephone
    click_on "Create Fistula register"

    assert_text "Fistula register was successfully created"
    click_on "Back"
  end

  test "updating a Fistula register" do
    visit fistula_registers_url
    click_on "Edit", match: :first

    fill_in "Location", with: @fistula_register.Location
    fill_in "Marital status", with: @fistula_register.Marital_status
    fill_in "Name", with: @fistula_register.Name
    fill_in "Next of kin", with: @fistula_register.Next_of_Kin
    fill_in "Region", with: @fistula_register.Region
    fill_in "Telephone", with: @fistula_register.Telephone
    click_on "Update Fistula register"

    assert_text "Fistula register was successfully updated"
    click_on "Back"
  end

  test "destroying a Fistula register" do
    visit fistula_registers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fistula register was successfully destroyed"
  end
end
