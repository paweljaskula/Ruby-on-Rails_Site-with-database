class CreateZasobyJaskulas < ActiveRecord::Migration[5.1]
  def change
    create_table :zasoby_jaskulas do |t|
      t.string :nazwa
      t.integer :cena

      t.timestamps
    end
  end
end
