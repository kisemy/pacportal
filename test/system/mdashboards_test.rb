require "application_system_test_case"

class MdashboardsTest < ApplicationSystemTestCase
  setup do
    @mdashboard = mdashboards(:one)
  end

  test "visiting the index" do
    visit mdashboards_url
    assert_selector "h1", text: "Mdashboards"
  end

  test "creating a Mdashboard" do
    visit mdashboards_url
    click_on "New Mdashboard"

    fill_in "Desc", with: @mdashboard.desc
    click_on "Create Mdashboard"

    assert_text "Mdashboard was successfully created"
    click_on "Back"
  end

  test "updating a Mdashboard" do
    visit mdashboards_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @mdashboard.desc
    click_on "Update Mdashboard"

    assert_text "Mdashboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Mdashboard" do
    visit mdashboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mdashboard was successfully destroyed"
  end
end
