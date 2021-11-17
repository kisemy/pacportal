require "application_system_test_case"

class PhomesTest < ApplicationSystemTestCase
  setup do
    @phome = phomes(:one)
  end

  test "visiting the index" do
    visit phomes_url
    assert_selector "h1", text: "Phomes"
  end

  test "creating a Phome" do
    visit phomes_url
    click_on "New Phome"

    fill_in "Desc", with: @phome.desc
    click_on "Create Phome"

    assert_text "Phome was successfully created"
    click_on "Back"
  end

  test "updating a Phome" do
    visit phomes_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @phome.desc
    click_on "Update Phome"

    assert_text "Phome was successfully updated"
    click_on "Back"
  end

  test "destroying a Phome" do
    visit phomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phome was successfully destroyed"
  end
end
