class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def time
    array = self.appointment_datetime.to_formatted_s(:long).split(" ")
    array.insert(array.length - 1, "at").join(" ")
  end
end
