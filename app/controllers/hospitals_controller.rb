class HospitalsController < ApplicationController
  HOSPITALS = [
    { id: 1, name: "City Hospital", email: "city@gmail.com", address: "MG Road", phone: "9876543210" },
    { id: 2, name: "Apollo Hospital", email: "apollo@gmail.com", address: "Indiranagar", phone: "9876543211" },
    { id: 3, name: "Fortis Hospital", email: "fortis@gmail.com", address: "Whitefield", phone: "9876543212" },
    { id: 4, name: "Hope Medical Center", address: "Residency Road, Pune", phone: "9555544321", email: "support@hope.com"},
    { id: 5, name: "Manipal Hospital", address: "Old Airport Road, Bangalore", phone: "9876543213", email: "manipal@gmail.com"},
    { id: 6, name: "Narayana Health", address: "Electronic City, Bangalore", phone: "9876543214", email: "narayana@gmail.com"}
  ]

  def index
    @hospitals = HOSPITALS
  end

  def show
    @hospital = HOSPITALS.find { |hospital| hospital[:id] == params[:id].to_i }
  end
end