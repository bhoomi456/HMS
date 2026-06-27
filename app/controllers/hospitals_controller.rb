class HospitalsController < ApplicationController
  HOSPITALS = [
    { id: 1, name: "City Hospital", email: "city@gmail.com", address: "MG Road", phone: "9876543210" },
    { id: 2, name: "Apollo Hospital", email: "apollo@gmail.com", address: "Indiranagar", phone: "9876543211" },
    { id: 3, name: "Fortis Hospital", email: "fortis@gmail.com", address: "Whitefield", phone: "9876543212" }
  ]

  def index
    @hospitals = HOSPITALS
  end

  def show
    @hospital = HOSPITALS.find { |hospital| hospital[:id] == params[:id].to_i }
  end
end