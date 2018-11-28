class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :country_code
      t.integer :ddd
      t.integer :number

      t.timestamps
    end
  end
end
