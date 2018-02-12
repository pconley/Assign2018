class CreateWidgets < ActiveRecord::Migration[5.1]
  def change
    create_table :widgets do |t|
      t.string :name
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
