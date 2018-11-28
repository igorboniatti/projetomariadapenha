class CreateComentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :comentaries do |t|
      t.date :date
      t.text :content
      t.references :publication, foreign_key: true

      t.timestamps
    end
  end
end
