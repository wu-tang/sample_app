class CreateRekishis < ActiveRecord::Migration[5.1]
  def change
    create_table :rekishis do |t|
      t.string :name

      t.timestamps
    end
  end
end
