require "application_system_test_case"

class SpecialAbilitiesTest < ApplicationSystemTestCase
  setup do
    @special_ability = special_abilities(:one)
  end

  test "visiting the index" do
    visit special_abilities_url
    assert_selector "h1", text: "Special Abilities"
  end

  test "creating a Special ability" do
    visit special_abilities_url
    click_on "New Special Ability"

    click_on "Create Special ability"

    assert_text "Special ability was successfully created"
    click_on "Back"
  end

  test "updating a Special ability" do
    visit special_abilities_url
    click_on "Edit", match: :first

    click_on "Update Special ability"

    assert_text "Special ability was successfully updated"
    click_on "Back"
  end

  test "destroying a Special ability" do
    visit special_abilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Special ability was successfully destroyed"
  end
end
