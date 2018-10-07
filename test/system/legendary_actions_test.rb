require "application_system_test_case"

class LegendaryActionsTest < ApplicationSystemTestCase
  setup do
    @legendary_action = legendary_actions(:one)
  end

  test "visiting the index" do
    visit legendary_actions_url
    assert_selector "h1", text: "Legendary Actions"
  end

  test "creating a Legendary action" do
    visit legendary_actions_url
    click_on "New Legendary Action"

    fill_in "Attack Bonus", with: @legendary_action.attack_bonus
    fill_in "Damage Dice", with: @legendary_action.damage_dice
    fill_in "Description", with: @legendary_action.description
    fill_in "Name", with: @legendary_action.name
    click_on "Create Legendary action"

    assert_text "Legendary action was successfully created"
    click_on "Back"
  end

  test "updating a Legendary action" do
    visit legendary_actions_url
    click_on "Edit", match: :first

    fill_in "Attack Bonus", with: @legendary_action.attack_bonus
    fill_in "Damage Dice", with: @legendary_action.damage_dice
    fill_in "Description", with: @legendary_action.description
    fill_in "Name", with: @legendary_action.name
    click_on "Update Legendary action"

    assert_text "Legendary action was successfully updated"
    click_on "Back"
  end

  test "destroying a Legendary action" do
    visit legendary_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legendary action was successfully destroyed"
  end
end
