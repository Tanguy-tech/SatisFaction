class AddUserRefToEmailVerifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :email_verifications, :user, foreign_key: true
  end
end
