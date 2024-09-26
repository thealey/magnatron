json.extract! timesheet_item, :id, :timesheet_id, :item_date, :hours, :comment, :rate, :created_at, :updated_at
json.url timesheet_item_url(timesheet_item, format: :json)
