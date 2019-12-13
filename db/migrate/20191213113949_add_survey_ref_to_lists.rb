class AddSurveyRefToLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :survey, foreign_key: true
  end
end
