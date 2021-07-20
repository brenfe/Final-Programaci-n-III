require "test_helper"

class ClothingUsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clothing_use = clothing_uses(:one)
  end

  test "should get index" do
    get clothing_uses_url
    assert_response :success
  end

  test "should get new" do
    get new_clothing_use_url
    assert_response :success
  end

  test "should create clothing_use" do
    assert_difference('ClothingUse.count') do
      post clothing_uses_url, params: { clothing_use: { broadcast_id: @clothing_use.broadcast_id, garment_id: @clothing_use.garment_id, host_id: @clothing_use.host_id } }
    end

    assert_redirected_to clothing_use_url(ClothingUse.last)
  end

  test "should show clothing_use" do
    get clothing_use_url(@clothing_use)
    assert_response :success
  end

  test "should get edit" do
    get edit_clothing_use_url(@clothing_use)
    assert_response :success
  end

  test "should update clothing_use" do
    patch clothing_use_url(@clothing_use), params: { clothing_use: { broadcast_id: @clothing_use.broadcast_id, garment_id: @clothing_use.garment_id, host_id: @clothing_use.host_id } }
    assert_redirected_to clothing_use_url(@clothing_use)
  end

  test "should destroy clothing_use" do
    assert_difference('ClothingUse.count', -1) do
      delete clothing_use_url(@clothing_use)
    end

    assert_redirected_to clothing_uses_url
  end
end
