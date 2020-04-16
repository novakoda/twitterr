require "application_system_test_case"

class TweettsTest < ApplicationSystemTestCase
  setup do
    @tweett = tweetts(:one)
  end

  test "visiting the index" do
    visit tweetts_url
    assert_selector "h1", text: "Tweetts"
  end

  test "creating a Tweett" do
    visit tweetts_url
    click_on "New Tweett"

    fill_in "Tweett", with: @tweett.tweett
    click_on "Create Tweett"

    assert_text "Tweett was successfully created"
    click_on "Back"
  end

  test "updating a Tweett" do
    visit tweetts_url
    click_on "Edit", match: :first

    fill_in "Tweett", with: @tweett.tweett
    click_on "Update Tweett"

    assert_text "Tweett was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweett" do
    visit tweetts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweett was successfully destroyed"
  end
end
