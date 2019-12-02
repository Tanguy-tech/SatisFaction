class CreateJoinResponseRespondents < ActiveRecord::Migration[5.2]
  def change
    create_table :join_response_respondents do |t|
      t.references :response, foreign_key: true
      t.references :respondent, foreign_key: true

      t.timestamps
    end
  end
end
