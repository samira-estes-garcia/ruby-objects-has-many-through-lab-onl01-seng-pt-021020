class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end
  
  def new_appointment(date, patient)
    Appointment.new()
    
  end  
  
  def patients 
  end

end