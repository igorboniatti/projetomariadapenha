class CreateOccurrenceBulletins < ActiveRecord::Migration[5.2]
  def change
    create_table :occurrence_bulletins do |t|
      t.date :occurrence_date
      t.string :uncertain_date
      t.string :location_type
      t.text :report
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
