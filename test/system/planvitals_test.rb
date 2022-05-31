require "application_system_test_case"

class PlanvitalsTest < ApplicationSystemTestCase
  setup do
    @planvital = planvitals(:one)
  end

  test "visiting the index" do
    visit planvitals_url
    assert_selector "h1", text: "Planvitals"
  end

  test "should create planvital" do
    visit planvitals_url
    click_on "New planvital"

    fill_in "Date", with: @planvital.date
    fill_in "Funda", with: @planvital.fundA
    fill_in "Fundc", with: @planvital.fundC
    fill_in "Funde", with: @planvital.fundE
    click_on "Create Planvital"

    assert_text "Planvital was successfully created"
    click_on "Back"
  end

  test "should update Planvital" do
    visit planvital_url(@planvital)
    click_on "Edit this planvital", match: :first

    fill_in "Date", with: @planvital.date
    fill_in "Funda", with: @planvital.fundA
    fill_in "Fundc", with: @planvital.fundC
    fill_in "Funde", with: @planvital.fundE
    click_on "Update Planvital"

    assert_text "Planvital was successfully updated"
    click_on "Back"
  end

  test "should destroy Planvital" do
    visit planvital_url(@planvital)
    click_on "Destroy this planvital", match: :first

    assert_text "Planvital was successfully destroyed"
  end
end
