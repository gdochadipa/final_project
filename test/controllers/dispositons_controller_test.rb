require 'test_helper'

class DispositonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispositon = dispositons(:one)
  end

  test "should get index" do
    get dispositons_url
    assert_response :success
  end

  test "should get new" do
    get new_dispositon_url
    assert_response :success
  end

  test "should create dispositon" do
    assert_difference('Dispositon.count') do
      post dispositons_url, params: { dispositon: { comment: @dispositon.comment, dispocode: @dispositon.dispocode, inmail_id: @dispositon.inmail_id, status: @dispositon.status, to: @dispositon.to, user_id: @dispositon.user_id } }
    end

    assert_redirected_to dispositon_url(Dispositon.last)
  end

  test "should show dispositon" do
    get dispositon_url(@dispositon)
    assert_response :success
  end

  test "should get edit" do
    get edit_dispositon_url(@dispositon)
    assert_response :success
  end

  test "should update dispositon" do
    patch dispositon_url(@dispositon), params: { dispositon: { comment: @dispositon.comment, dispocode: @dispositon.dispocode, inmail_id: @dispositon.inmail_id, status: @dispositon.status, to: @dispositon.to, user_id: @dispositon.user_id } }
    assert_redirected_to dispositon_url(@dispositon)
  end

  test "should destroy dispositon" do
    assert_difference('Dispositon.count', -1) do
      delete dispositon_url(@dispositon)
    end

    assert_redirected_to dispositons_url
  end
end
