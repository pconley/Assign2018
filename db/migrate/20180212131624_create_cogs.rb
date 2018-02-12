class CreateCogs < ActiveRecord::Migration[5.1]
  def change
    create_table :cogs do |t|
      t.string :name
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
