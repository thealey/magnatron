class TimesheetItemsController < ApplicationController
  before_action :set_timesheet_item, only: %i[ show edit update destroy ]

  # GET /timesheet_items or /timesheet_items.json
  def index
    @timesheet_items = TimesheetItem.all
  end

  # GET /timesheet_items/1 or /timesheet_items/1.json
  def show
    @timesheet_items = [@timesheet_item]
  end

  # GET /timesheet_items/new
  def new
    @timesheet = Timesheet.find params[:timesheet_id]
    @timesheet_item = TimesheetItem.new(timesheet_id: @timesheet.id,
      rate: @timesheet.client.default_rate,
      item_date: Date.today())
  end

  # GET /timesheet_items/1/edit
  def edit
  end

  # POST /timesheet_items or /timesheet_items.json
  def create
    @timesheet_item = TimesheetItem.new(timesheet_item_params)

    respond_to do |format|
      if @timesheet_item.save
        format.html { redirect_to @timesheet_item.timesheet, notice: "Timesheet item was successfully created." }
        format.json { render :show, status: :created, location: @timesheet_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @timesheet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timesheet_items/1 or /timesheet_items/1.json
  def update
    respond_to do |format|
      if @timesheet_item.update(timesheet_item_params)
        format.html { redirect_to @timesheet_item.timesheet, notice: "Timesheet item was successfully updated." }
        format.json { render :show, status: :ok, location: @timesheet_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @timesheet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timesheet_items/1 or /timesheet_items/1.json
  def destroy
    @timesheet_item.destroy!

    respond_to do |format|
      format.html { redirect_to timesheet_items_path, status: :see_other, notice: "Timesheet item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timesheet_item
      @timesheet_item = TimesheetItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timesheet_item_params
      params.require(:timesheet_item).permit(:timesheet_id, :item_date, :hours, :comment, :rate)
    end
end
