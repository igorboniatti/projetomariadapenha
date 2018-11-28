class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birth_date
      t.string :email
      t.references :phone, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
