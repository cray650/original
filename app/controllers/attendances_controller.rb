class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end
  
  def new
    @year = Time.current.year
    @month = Time.current.month
    @day = Time.current.day
    @strftime = Date.today.strftime("%a")
    @time = DateTime.now
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new
    if @attendance.save
      redirect_to :index
    else
      render :new
    end
  end

  private
  def attendance_params
    params.require(:attendance).permit(:attending, :leaving)
  end
end
