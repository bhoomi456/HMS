class DoctorsController < ApplicationController
  DOCTORS = [
    { id: 1, name: "Dr. A", email: "a12@gmail.com", specialization: "Cardiology", experience: 12, consultation_fee: 800, available: true },
    { id: 2, name: "Dr. B", email: "b12@gmail.com", specialization: "Orthopedics", experience: 5, consultation_fee: 400, available: false },
    { id: 3, name: "Dr. C", email: "c12@gmail.com", specialization: "Neurology", experience: 8, consultation_fee: 1000, available: true },
    { id: 4, name: "Dr. D", email: "d12@gmail.com", specialization: "Dermatology", experience: 10, consultation_fee: 600, available: true },
    { id: 5, name: "Dr. E", email: "e12@gmail.com", specialization: "Pediatrics", experience: 6, consultation_fee: 500, available: false }
  ]
  def index
    @doctors = DOCTORS
  end

  def show
    @doctor = DOCTORS.find { |doctor| doctor[:id] == params[:id].to_i }
  end
end