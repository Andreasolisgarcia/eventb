# Preview all emails at http://localhost:3000/rails/mailers/attendance_mailer
class AttendanceMailerPreview < ActionMailer::Preview
    def attendance_email
        AttendanceMailer.attendance_email(Attendance.first)
    end 
end
