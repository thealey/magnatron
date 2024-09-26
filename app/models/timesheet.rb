class Timesheet < ApplicationRecord
  belongs_to :user
  belongs_to :client
  has_many :timesheet_items
  validates_presence_of :name
  has_rich_text :description
  scope :active, -> { where(submitted: false) }

  after_save :update_invoice_number

  def slug
    self.name + " - " + self.client.name + " (#" + self.invoice_number.to_s + ")"
  end

  def total_hours
    self.timesheet_items.collect {|tsi| tsi.hours }.sum
  end

  def timesheet_sum
    self.timesheet_items.collect {|tsi| tsi.item_sum }.sum
  end

  def status
    if self.submitted
      return "inactive"
    else
      return "active"
    end
  end

  private

  def update_invoice_number
    if self.invoice_number.nil?
      max = Timesheet.pluck(:invoice_number).compact.max

      if max.nil?
        self.invoice_number = 2000 
      else
        self.invoice_number = max + 5
      end

      self.save
    end
  end
end
