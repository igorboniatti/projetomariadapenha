class CreateInstitutes < ActiveRecord::Migration[5.2]
  def change
    create_table :institutes do |t|
      t.string :name
      t.text :description
      t.text :note
      t.string :email
      t.text :attendance_locals
      t.references :phone, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
