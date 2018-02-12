class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :status
      t.boolean :state
      t.string :logo

      t.timestamps
    end
  end
end
