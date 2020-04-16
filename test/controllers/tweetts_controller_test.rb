require 'test_helper'

class TweettsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweett = tweetts(:one)
  end

  test "should get index" do
    get tweetts_url
    assert_response :success
  end

  test "should get new" do
    get new_tweett_url
    assert_response :success
  end

  test "should create tweett" do
    assert_difference('Tweett.count') do
      post tweetts_url, params: { tweett: { tweett: @tweett.tweett } }
    end

    assert_redirected_to tweett_url(Tweett.last)
  end

  test "should show tweett" do
    get tweett_url(@tweett)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweett_url(@tweett)
    assert_response :success
  end

  test "should update tweett" do
    patch tweett_url(@tweett), params: { tweett: { tweett: @tweett.tweett } }
    assert_redirected_to tweett_url(@tweett)
  end

  test "should destroy tweett" do
    assert_difference('Tweett.count', -1) do
      delete tweett_url(@tweett)
    end

    assert_redirected_to tweetts_url
  end
end
