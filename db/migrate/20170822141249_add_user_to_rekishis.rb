class AddUserToRekishis < ActiveRecord::Migration[5.1]
  def change
    add_reference :rekishis, :user, foreign_key: true
  end
end
