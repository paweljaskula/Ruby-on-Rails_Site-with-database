class CreateKlienciJaskulas < ActiveRecord::Migration[5.1]
  def change
    create_table :klienci_jaskulas do |t|
      t.string :imie
      t.string :nazwisko
      t.integer :wiek

      t.timestamps
    end
  end
end
