require 'pry'

class Patient 
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select{|appt| appt.patient == self}
  end
  
  def doctors 
    appointments.collect{|appt| appt.date}
    # binding.pry
  end

end









