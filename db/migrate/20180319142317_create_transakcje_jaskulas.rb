class CreateTransakcjeJaskulas < ActiveRecord::Migration[5.1]
  def change
    create_table :transakcje_jaskulas do |t|
      t.string :username
      t.integer :kwota
      t.string :data

      t.timestamps
    end
  end
end
