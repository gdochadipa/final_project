require 'test_helper'

class DispocodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispocode = dispocodes(:one)
  end

  test "should get index" do
    get dispocodes_url
    assert_response :success
  end

  test "should get new" do
    get new_dispocode_url
    assert_response :success
  end

  test "should create dispocode" do
    assert_difference('Dispocode.count') do
      post dispocodes_url, params: { dispocode: { dispo_title: @dispocode.dispo_title } }
    end

    assert_redirected_to dispocode_url(Dispocode.last)
  end

  test "should show dispocode" do
    get dispocode_url(@dispocode)
    assert_response :success
  end

  test "should get edit" do
    get edit_dispocode_url(@dispocode)
    assert_response :success
  end

  test "should update dispocode" do
    patch dispocode_url(@dispocode), params: { dispocode: { dispo_title: @dispocode.dispo_title } }
    assert_redirected_to dispocode_url(@dispocode)
  end

  test "should destroy dispocode" do
    assert_difference('Dispocode.count', -1) do
      delete dispocode_url(@dispocode)
    end

    assert_redirected_to dispocodes_url
  end
end
