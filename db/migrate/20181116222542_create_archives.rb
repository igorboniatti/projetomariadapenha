class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.text :description
      t.attachment :arch

      t.timestamps
    end
  end
end
