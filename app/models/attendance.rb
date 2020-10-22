class Attendance < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :attending
    validates :leaving
    validates :working_hour
    validates :overtime
  end
end
