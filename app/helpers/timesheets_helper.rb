module TimesheetsHelper
  def timesheet_name(timesheet)
    return timesheet.name if timesheet.name.present?
    return "Invoice: " + timesheet.invoice_number.to_s
  end
end
