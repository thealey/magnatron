require "application_system_test_case"

class TimesheetItemsTest < ApplicationSystemTestCase
  setup do
    @timesheet_item = timesheet_items(:one)
  end

  test "visiting the index" do
    visit timesheet_items_url
    assert_selector "h1", text: "Timesheet items"
  end

  test "should create timesheet item" do
    visit timesheet_items_url
    click_on "New timesheet item"

    fill_in "Comment", with: @timesheet_item.comment
    fill_in "Hours", with: @timesheet_item.hours
    fill_in "Item date", with: @timesheet_item.item_date
    fill_in "Rate", with: @timesheet_item.rate
    fill_in "Timesheet", with: @timesheet_item.timesheet_id
    click_on "Create Timesheet item"

    assert_text "Timesheet item was successfully created"
    click_on "Back"
  end

  test "should update Timesheet item" do
    visit timesheet_item_url(@timesheet_item)
    click_on "Edit this timesheet item", match: :first

    fill_in "Comment", with: @timesheet_item.comment
    fill_in "Hours", with: @timesheet_item.hours
    fill_in "Item date", with: @timesheet_item.item_date
    fill_in "Rate", with: @timesheet_item.rate
    fill_in "Timesheet", with: @timesheet_item.timesheet_id
    click_on "Update Timesheet item"

    assert_text "Timesheet item was successfully updated"
    click_on "Back"
  end

  test "should destroy Timesheet item" do
    visit timesheet_item_url(@timesheet_item)
    click_on "Destroy this timesheet item", match: :first

    assert_text "Timesheet item was successfully destroyed"
  end
end
