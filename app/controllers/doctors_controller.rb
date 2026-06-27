class DoctorsController < ApplicationController
  DOCTORS = [
    { id: 1, name: "Dr. A", specialization: "Cardiology", experience: 12, available: true },
    { id: 2, name: "Dr. B", specialization: "Orthopedics", experience: 5, available: false },
    { id: 3, name: "Dr. C", specialization: "Neurology", experience: 8, available: true },
    { id: 4, name: "Dr. D", specialization: "Dermatology", experience: 10, available: true },
    { id: 5, name: "Dr. E", specialization: "Pediatrics", experience: 6, available: false }
  ]
  def index
    @doctors = DOCTORS
  end

  def show
    @doctor = DOCTORS.find { |doctor| doctor[:id] == params[:id].to_i }
  end
end