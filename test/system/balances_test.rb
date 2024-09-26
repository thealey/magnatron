require "application_system_test_case"

class BalancesTest < ApplicationSystemTestCase
  setup do
    @balance = balances(:one)
  end

  test "visiting the index" do
    visit balances_url
    assert_selector "h1", text: "Balances"
  end

  test "should create balance" do
    visit balances_url
    click_on "New balance"

    fill_in "Account", with: @balance.account_id
    fill_in "Amount", with: @balance.amount
    fill_in "Comment", with: @balance.comment
    click_on "Create Balance"

    assert_text "Balance was successfully created"
    click_on "Back"
  end

  test "should update Balance" do
    visit balance_url(@balance)
    click_on "Edit this balance", match: :first

    fill_in "Account", with: @balance.account_id
    fill_in "Amount", with: @balance.amount
    fill_in "Comment", with: @balance.comment
    click_on "Update Balance"

    assert_text "Balance was successfully updated"
    click_on "Back"
  end

  test "should destroy Balance" do
    visit balance_url(@balance)
    click_on "Destroy this balance", match: :first

    assert_text "Balance was successfully destroyed"
  end
end
