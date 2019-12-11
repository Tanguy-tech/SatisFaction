class AddIndexToSurveys < ActiveRecord::Migration[5.2]
  def change
  	add_reference :surveys, :landing, foreign_key: true
  end
end
