require "application_system_test_case"

class ShedulesTest < ApplicationSystemTestCase
  setup do
    @shedule = shedules(:one)
  end

  test "visiting the index" do
    visit shedules_url
    assert_selector "h1", text: "Shedules"
  end

  test "creating a Shedule" do
    visit shedules_url
    click_on "New Shedule"

    fill_in "Day", with: @shedule.day
    fill_in "Pair number", with: @shedule.pair_number
    fill_in "Type of discipline", with: @shedule.type_of_discipline
    fill_in "Type of lesson", with: @shedule.type_of_lesson
    click_on "Create Shedule"

    assert_text "Shedule was successfully created"
    click_on "Back"
  end

  test "updating a Shedule" do
    visit shedules_url
    click_on "Edit", match: :first

    fill_in "Day", with: @shedule.day
    fill_in "Pair number", with: @shedule.pair_number
    fill_in "Type of discipline", with: @shedule.type_of_discipline
    fill_in "Type of lesson", with: @shedule.type_of_lesson
    click_on "Update Shedule"

    assert_text "Shedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Shedule" do
    visit shedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shedule was successfully destroyed"
  end
end
