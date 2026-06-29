class AddConsultationFeeToDoctors < ActiveRecord::Migration[8.1]
  def change
    add_column :doctors, :consultation_fee, :integer
  end
end
