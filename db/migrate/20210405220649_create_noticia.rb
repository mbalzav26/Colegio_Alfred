class CreateNoticia < ActiveRecord::Migration[5.2]
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.date :fecha
      t.text :contenido

      t.timestamps
    end
  end
end