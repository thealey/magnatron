class TimesheetItem < ApplicationRecord
  belongs_to :timesheet
  has_rich_text :comment

  def item_sum
    return (self.hours * self.rate).round
  end
end
