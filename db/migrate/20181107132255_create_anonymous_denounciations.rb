class CreateAnonymousDenounciations < ActiveRecord::Migration[5.2]
  def change
    create_table :anonymous_denounciations do |t|
      t.date :occurrence_date
      t.string :uncertain_date
      t.string :location_type
      t.text :report
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
