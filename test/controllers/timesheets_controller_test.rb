require "test_helper"

class TimesheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timesheet = timesheets(:one)
  end

  test "should get index" do
    get timesheets_url
    assert_response :success
  end

  test "should get new" do
    get new_timesheet_url
    assert_response :success
  end

  test "should create timesheet" do
    assert_difference("Timesheet.count") do
      post timesheets_url, params: { timesheet: { client_id: @timesheet.client_id, description: @timesheet.description, paid: @timesheet.paid, submitted: @timesheet.submitted, submitted_date: @timesheet.submitted_date, user_id: @timesheet.user_id } }
    end

    assert_redirected_to timesheet_url(Timesheet.last)
  end

  test "should show timesheet" do
    get timesheet_url(@timesheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_timesheet_url(@timesheet)
    assert_response :success
  end

  test "should update timesheet" do
    patch timesheet_url(@timesheet), params: { timesheet: { client_id: @timesheet.client_id, description: @timesheet.description, paid: @timesheet.paid, submitted: @timesheet.submitted, submitted_date: @timesheet.submitted_date, user_id: @timesheet.user_id } }
    assert_redirected_to timesheet_url(@timesheet)
  end

  test "should destroy timesheet" do
    assert_difference("Timesheet.count", -1) do
      delete timesheet_url(@timesheet)
    end

    assert_redirected_to timesheets_url
  end
end
