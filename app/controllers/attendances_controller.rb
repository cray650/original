class AttendancesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
  end


  def new
    @year = Time.current.year
    @month = Time.current.month
    @day = Time.current.day
    @strftime = Date.today.strftime("%a")
    @time = DateTime.now.strftime("%T")
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
    params.require(:attendance).permit(:in, :out)
  end

  def monthly_time_cards(user, year, month)
    number_of_days_in_month = Date.new(year, month, 1).next_month.prev_day.day
    results = Array.new(number_of_days_in_month) # 月の日数分nilで埋めた配列を用意
    time_cards = Attendance.all(@user, year, month)
    time_cards.each do |card|
      results[@attendance.day - 1] = card
    end
    results
  end

end
