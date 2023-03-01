class AttendanceMailer < ApplicationMailer

    def attendance_email(attendance)
         #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @attendance= attendance
        @event = attendance.event
            @host =  attendance.event.user
        @user = attendance.user 
         #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'http://eventb.fr/login' 
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @user.email, subject: 'You subscribed to an event!') 
    end
end
