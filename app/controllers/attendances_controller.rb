class AttendancesController < ApplicationController
    def create
        @event = Event.find(params[:event_id])
        @attendance = @event.attendances.new(attendance_params)
        if @attendance.save
          redirect_to @event, notice: "You are now attending this event!"
        else
          redirect_to @event, alert: "There was a problem attending this event."
        end
      end

    def destroy
      @event = Event.find(params[:event_id])
      @attendance = Attendance.find(params[:id])
      @attendance.destroy
      redirect_to @event, notice: "You are no longer attending this event"
    end
    
      private
    
      def attendance_params
        params.require(:attendance).permit(:user_id)
      end
end
