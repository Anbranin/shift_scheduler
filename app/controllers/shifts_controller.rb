class ShiftsController < ApplicationController
  def index
    @date = Time.zone.now # later: date can be params[:date]?
    @shifts = Shift.where(
      start_time: @date.beginning_of_month.beginning_of_week..@date.end_of_month.end_of_week
    )
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new shift_params
    if @shift.save
      redirect_to shifts_url, notice: 'shift successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @shift = Shift.find params[:id]
  end

  def update
    @shift = Shift.find params[:id]
    if @shift.update(shift_params)
      redirect_to shifts_url, notice: 'shift successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @shift = Shift.find params[:id]
    if @shift.destroy
      redirect_to shifts_url, notice: 'shift successfully destroyed'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:name, :start_time, :end_time, :qualification_id)
  end
end
