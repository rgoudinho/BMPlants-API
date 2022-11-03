class CreateHealthProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :health_problems do |t|
      t.string :name

      t.timestamps
    end
  end
end
