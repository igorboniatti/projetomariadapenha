class CreateDoubts < ActiveRecord::Migration[5.2]
  def change
    create_table :doubts do |t|
      t.text :answer
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
