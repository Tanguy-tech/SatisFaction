class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :value
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
