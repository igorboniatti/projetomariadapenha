class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :title
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
