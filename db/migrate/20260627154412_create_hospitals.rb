class CreateHospitals < ActiveRecord::Migration[8.1]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
