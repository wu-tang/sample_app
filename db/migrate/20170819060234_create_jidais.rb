class CreateJidais < ActiveRecord::Migration[5.1]
  def change
    create_table :jidais do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
