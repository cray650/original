class AttendancesController < ApplicationController
  def index
    @year = Time.current.year
    @month = Time.current.month
    @day = Time.current.day
    @time = DateTime.now
  end
  
  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new
  end
end
