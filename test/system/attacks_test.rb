require "application_system_test_case"

class AttacksTest < ApplicationSystemTestCase
  setup do
    @attack = attacks(:one)
  end

  test "visiting the index" do
    visit attacks_url
    assert_selector "h1", text: "Attacks"
  end

  test "creating a Attack" do
    visit attacks_url
    click_on "New Attack"

    fill_in "Damage Bonus", with: @attack.damage_bonus
    fill_in "Damage Dice", with: @attack.damage_dice
    fill_in "Description", with: @attack.description
    fill_in "Name", with: @attack.name
    click_on "Create Attack"

    assert_text "Attack was successfully created"
    click_on "Back"
  end

  test "updating a Attack" do
    visit attacks_url
    click_on "Edit", match: :first

    fill_in "Damage Bonus", with: @attack.damage_bonus
    fill_in "Damage Dice", with: @attack.damage_dice
    fill_in "Description", with: @attack.description
    fill_in "Name", with: @attack.name
    click_on "Update Attack"

    assert_text "Attack was successfully updated"
    click_on "Back"
  end

  test "destroying a Attack" do
    visit attacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attack was successfully destroyed"
  end
end
