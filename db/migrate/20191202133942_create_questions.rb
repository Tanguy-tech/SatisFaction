class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :number
      t.text :content
      t.belongs_to :survey, index: true

      t.timestamps
    end
  end
end
