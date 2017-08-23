class AddRekishiToJidais < ActiveRecord::Migration[5.1]
  def change
    add_reference :jidais, :rekishi, foreign_key: true
  end
end
