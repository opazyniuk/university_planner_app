require 'test_helper'

class ShedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shedule = shedules(:one)
  end

  test "should get index" do
    get shedules_url
    assert_response :success
  end

  test "should get new" do
    get new_shedule_url
    assert_response :success
  end

  test "should create shedule" do
    assert_difference('Shedule.count') do
      post shedules_url, params: { shedule: { day: @shedule.day, pair_number: @shedule.pair_number, type_of_discipline: @shedule.type_of_discipline, type_of_lesson: @shedule.type_of_lesson } }
    end

    assert_redirected_to shedule_url(Shedule.last)
  end

  test "should show shedule" do
    get shedule_url(@shedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_shedule_url(@shedule)
    assert_response :success
  end

  test "should update shedule" do
    patch shedule_url(@shedule), params: { shedule: { day: @shedule.day, pair_number: @shedule.pair_number, type_of_discipline: @shedule.type_of_discipline, type_of_lesson: @shedule.type_of_lesson } }
    assert_redirected_to shedule_url(@shedule)
  end

  test "should destroy shedule" do
    assert_difference('Shedule.count', -1) do
      delete shedule_url(@shedule)
    end

    assert_redirected_to shedules_url
  end
end
