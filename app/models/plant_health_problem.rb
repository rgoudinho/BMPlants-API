class PlantHealthProblem < ApplicationRecord
  belongs_to :health_problem
  belongs_to :plant
end
