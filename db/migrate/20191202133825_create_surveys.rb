class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
