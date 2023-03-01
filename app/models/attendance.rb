class Attendance < ApplicationRecord
  after_create :attendance_confirmation

  def attendance_confirmation
    AttendanceMailer.attendance_email(self).deliver_now
  end

  belongs_to :user
  belongs_to :event
end
