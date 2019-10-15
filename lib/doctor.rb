require 'pry'

class Doctor 
  
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self}
    # binding.pry
  end
  
  def new_appointment(date, patient) 
    Appointment.new(patient, date, self)
    # binding.pry
  end
  
  def patients
    Patient.all.select do |patient|
      patient
      # binding.pry
    end
  end
  
end













