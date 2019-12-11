class AddTokenToLandings < ActiveRecord::Migration[5.2]
  def change
    add_column :landings, :token, :string
  end
end
