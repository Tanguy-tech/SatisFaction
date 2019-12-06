class CreateRespondents < ActiveRecord::Migration[5.2]
  def change
    create_table :respondents do |t|

      t.timestamps
    end
  end
end
