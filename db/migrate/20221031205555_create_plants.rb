class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name, null: false
      t.string :scientific_name, null: false 
      t.string :description

      t.timestamps
    end
  end
end
