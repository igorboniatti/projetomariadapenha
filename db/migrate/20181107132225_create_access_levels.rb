class CreateAccessLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :access_levels do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
