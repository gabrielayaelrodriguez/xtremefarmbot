require 'test_helper'

class PlantSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_sector = plant_sectors(:one)
  end

  test "should get index" do
    get plant_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_sector_url
    assert_response :success
  end

  test "should create plant_sector" do
    assert_difference('PlantSector.count') do
      post plant_sectors_url, params: { plant_sector: {  } }
    end

    assert_redirected_to plant_sector_url(PlantSector.last)
  end

  test "should show plant_sector" do
    get plant_sector_url(@plant_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_sector_url(@plant_sector)
    assert_response :success
  end

  test "should update plant_sector" do
    patch plant_sector_url(@plant_sector), params: { plant_sector: {  } }
    assert_redirected_to plant_sector_url(@plant_sector)
  end

  test "should destroy plant_sector" do
    assert_difference('PlantSector.count', -1) do
      delete plant_sector_url(@plant_sector)
    end

    assert_redirected_to plant_sectors_url
  end
end
