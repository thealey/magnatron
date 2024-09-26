require "test_helper"

class TimesheetItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timesheet_item = timesheet_items(:one)
  end

  test "should get index" do
    get timesheet_items_url
    assert_response :success
  end

  test "should get new" do
    get new_timesheet_item_url
    assert_response :success
  end

  test "should create timesheet_item" do
    assert_difference("TimesheetItem.count") do
      post timesheet_items_url, params: { timesheet_item: { comment: @timesheet_item.comment, hours: @timesheet_item.hours, item_date: @timesheet_item.item_date, rate: @timesheet_item.rate, timesheet_id: @timesheet_item.timesheet_id } }
    end

    assert_redirected_to timesheet_item_url(TimesheetItem.last)
  end

  test "should show timesheet_item" do
    get timesheet_item_url(@timesheet_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_timesheet_item_url(@timesheet_item)
    assert_response :success
  end

  test "should update timesheet_item" do
    patch timesheet_item_url(@timesheet_item), params: { timesheet_item: { comment: @timesheet_item.comment, hours: @timesheet_item.hours, item_date: @timesheet_item.item_date, rate: @timesheet_item.rate, timesheet_id: @timesheet_item.timesheet_id } }
    assert_redirected_to timesheet_item_url(@timesheet_item)
  end

  test "should destroy timesheet_item" do
    assert_difference("TimesheetItem.count", -1) do
      delete timesheet_item_url(@timesheet_item)
    end

    assert_redirected_to timesheet_items_url
  end
end
