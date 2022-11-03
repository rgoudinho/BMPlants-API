class CreatePlantHealthProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_health_problems do |t|
      t.references :health_problem, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
