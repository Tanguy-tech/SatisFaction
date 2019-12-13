class AddLandingRefToLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :landing, foreign_key: true
  end
end
