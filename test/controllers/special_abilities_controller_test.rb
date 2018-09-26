require 'test_helper'

class SpecialAbilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @special_ability = special_abilities(:one)
  end

  test "should get index" do
    get special_abilities_url
    assert_response :success
  end

  test "should get new" do
    get new_special_ability_url
    assert_response :success
  end

  test "should create special_ability" do
    assert_difference('SpecialAbility.count') do
      post special_abilities_url, params: { special_ability: {  } }
    end

    assert_redirected_to special_ability_url(SpecialAbility.last)
  end

  test "should show special_ability" do
    get special_ability_url(@special_ability)
    assert_response :success
  end

  test "should get edit" do
    get edit_special_ability_url(@special_ability)
    assert_response :success
  end

  test "should update special_ability" do
    patch special_ability_url(@special_ability), params: { special_ability: {  } }
    assert_redirected_to special_ability_url(@special_ability)
  end

  test "should destroy special_ability" do
    assert_difference('SpecialAbility.count', -1) do
      delete special_ability_url(@special_ability)
    end

    assert_redirected_to special_abilities_url
  end
end
