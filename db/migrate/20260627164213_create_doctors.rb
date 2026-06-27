class CreateDoctors < ActiveRecord::Migration[8.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.integer :experience
      t.boolean :status

      t.timestamps
    end
  end
end
