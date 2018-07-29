require 'test_helper'

class OutmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outmail = outmails(:one)
  end

  test "should get index" do
    get outmails_url
    assert_response :success
  end

  test "should get new" do
    get new_outmail_url
    assert_response :success
  end

  test "should create outmail" do
    assert_difference('Outmail.count') do
      post outmails_url, params: { outmail: { datesend: @outmail.datesend, mailtext: @outmail.mailtext, response: @outmail.response, title: @outmail.title, to: @outmail.to } }
    end

    assert_redirected_to outmail_url(Outmail.last)
  end

  test "should show outmail" do
    get outmail_url(@outmail)
    assert_response :success
  end

  test "should get edit" do
    get edit_outmail_url(@outmail)
    assert_response :success
  end

  test "should update outmail" do
    patch outmail_url(@outmail), params: { outmail: { datesend: @outmail.datesend, mailtext: @outmail.mailtext, response: @outmail.response, title: @outmail.title, to: @outmail.to } }
    assert_redirected_to outmail_url(@outmail)
  end

  test "should destroy outmail" do
    assert_difference('Outmail.count', -1) do
      delete outmail_url(@outmail)
    end

    assert_redirected_to outmails_url
  end
end
