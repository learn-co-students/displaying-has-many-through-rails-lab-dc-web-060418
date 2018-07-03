class Appointment < ActiveRecord::Base
    belongs_to :patient
    belongs_to :doctor

    def display_datetime
        #from this "Tue, 15 Mar 2016 18:00:00 UTC +00:00" to this "January 12, 2016 at 3:00"
        date = self.appointment_datetime
        date.strftime("%B %e, %Y at %H:%M")
    end
end
