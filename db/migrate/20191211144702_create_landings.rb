class CreateLandings < ActiveRecord::Migration[5.2]
  def change
    create_table :landings do |t|
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
