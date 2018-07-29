require 'test_helper'

class InmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inmail = inmails(:one)
  end

  test "should get index" do
    get inmails_url
    assert_response :success
  end

  test "should get new" do
    get new_inmail_url
    assert_response :success
  end

  test "should create inmail" do
    assert_difference('Inmail.count') do
      post inmails_url, params: { inmail: { datecoming: @inmail.datecoming, dispo_id: @inmail.dispo_id, from: @inmail.from, mailtext: @inmail.mailtext, response: @inmail.response, title: @inmail.title, to: @inmail.to } }
    end

    assert_redirected_to inmail_url(Inmail.last)
  end

  test "should show inmail" do
    get inmail_url(@inmail)
    assert_response :success
  end

  test "should get edit" do
    get edit_inmail_url(@inmail)
    assert_response :success
  end

  test "should update inmail" do
    patch inmail_url(@inmail), params: { inmail: { datecoming: @inmail.datecoming, dispo_id: @inmail.dispo_id, from: @inmail.from, mailtext: @inmail.mailtext, response: @inmail.response, title: @inmail.title, to: @inmail.to } }
    assert_redirected_to inmail_url(@inmail)
  end

  test "should destroy inmail" do
    assert_difference('Inmail.count', -1) do
      delete inmail_url(@inmail)
    end

    assert_redirected_to inmails_url
  end
end
