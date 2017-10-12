require 'test_helper'

class GreenhousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @greenhouse = greenhouses(:one)
  end

  test "should get index" do
    get greenhouses_url
    assert_response :success
  end

  test "should get new" do
    get new_greenhouse_url
    assert_response :success
  end

  test "should create greenhouse" do
    assert_difference('Greenhouse.count') do
      post greenhouses_url, params: { greenhouse: {  } }
    end

    assert_redirected_to greenhouse_url(Greenhouse.last)
  end

  test "should show greenhouse" do
    get greenhouse_url(@greenhouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_greenhouse_url(@greenhouse)
    assert_response :success
  end

  test "should update greenhouse" do
    patch greenhouse_url(@greenhouse), params: { greenhouse: {  } }
    assert_redirected_to greenhouse_url(@greenhouse)
  end

  test "should destroy greenhouse" do
    assert_difference('Greenhouse.count', -1) do
      delete greenhouse_url(@greenhouse)
    end

    assert_redirected_to greenhouses_url
  end
end
