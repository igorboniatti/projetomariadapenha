class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :public_place
      t.string :number
      t.string :neighborhood
      t.string :complement
      t.string :zip_code
      t.string :city
      t.string :federative_unit
      t.text :reference

      t.timestamps
    end
  end
end
