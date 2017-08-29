class CreateRekishis < ActiveRecord::Migration[5.1]
  def change
    create_table :rekishis do |t|
      t.string :name

      t.timestamps
    end
    add_index :rekishis, [:user_id, :created_at]
  end
end
