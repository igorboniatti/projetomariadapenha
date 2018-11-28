class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.references :access_level, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
