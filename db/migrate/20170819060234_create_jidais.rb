class CreateJidais < ActiveRecord::Migration[5.1]
  def change
    create_table :jidais do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_index :jidais, [:rekishi_id, :created_at]
  end
end
