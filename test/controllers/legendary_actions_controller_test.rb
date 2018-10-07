require 'test_helper'

class LegendaryActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legendary_action = legendary_actions(:one)
  end

  test "should get index" do
    get legendary_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_legendary_action_url
    assert_response :success
  end

  test "should create legendary_action" do
    assert_difference('LegendaryAction.count') do
      post legendary_actions_url, params: { legendary_action: { attack_bonus: @legendary_action.attack_bonus, damage_dice: @legendary_action.damage_dice, description: @legendary_action.description, name: @legendary_action.name } }
    end

    assert_redirected_to legendary_action_url(LegendaryAction.last)
  end

  test "should show legendary_action" do
    get legendary_action_url(@legendary_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_legendary_action_url(@legendary_action)
    assert_response :success
  end

  test "should update legendary_action" do
    patch legendary_action_url(@legendary_action), params: { legendary_action: { attack_bonus: @legendary_action.attack_bonus, damage_dice: @legendary_action.damage_dice, description: @legendary_action.description, name: @legendary_action.name } }
    assert_redirected_to legendary_action_url(@legendary_action)
  end

  test "should destroy legendary_action" do
    assert_difference('LegendaryAction.count', -1) do
      delete legendary_action_url(@legendary_action)
    end

    assert_redirected_to legendary_actions_url
  end
end
