class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.string :title
      t.string :image
      t.text :message

      t.timestamps null: false
    end
  end
end
