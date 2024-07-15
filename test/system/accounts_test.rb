require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "should create account" do
    visit accounts_url
    click_on "New account"

    fill_in "Birthday", with: @account.birthday
    fill_in "Company", with: @account.company
    fill_in "Email", with: @account.email
    fill_in "First name", with: @account.first_name
    fill_in "Last name", with: @account.last_name
    fill_in "Position", with: @account.position
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "should update Account" do
    visit account_url(@account)
    click_on "Edit this account", match: :first

    fill_in "Birthday", with: @account.birthday
    fill_in "Company", with: @account.company
    fill_in "Email", with: @account.email
    fill_in "First name", with: @account.first_name
    fill_in "Last name", with: @account.last_name
    fill_in "Position", with: @account.position
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "should destroy Account" do
    visit account_url(@account)
    click_on "Destroy this account", match: :first

    assert_text "Account was successfully destroyed"
  end
end
