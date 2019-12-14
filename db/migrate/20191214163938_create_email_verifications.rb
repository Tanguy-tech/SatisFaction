class CreateEmailVerifications < ActiveRecord::Migration[5.2]
  def change
    create_table :email_verifications do |t|

    	t.string :email
    	t.boolean :is_valid

      t.timestamps
    end
  end
end
