class PlantHealthProblemsController < ApplicationController
  before_action :set_plant_health_problem, only: %i[ show update destroy ]

  # GET /plant_health_problems
  def index
    @plant_health_problems = PlantHealthProblem.all

    render json: @plant_health_problems
  end

  # GET /plant_health_problems/1
  def show
    render json: @plant_health_problem
  end

  # POST /plant_health_problems
  def create
    @plant_health_problem = PlantHealthProblem.new(plant_health_problem_params)

    if @plant_health_problem.save
      render json: @plant_health_problem, status: :created, location: @plant_health_problem
    else
      render json: @plant_health_problem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plant_health_problems/1
  def update
    if @plant_health_problem.update(plant_health_problem_params)
      render json: @plant_health_problem
    else
      render json: @plant_health_problem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plant_health_problems/1
  def destroy
    @plant_health_problem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_health_problem
      @plant_health_problem = PlantHealthProblem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_health_problem_params
      params.require(:plant_health_problem).permit(:health_problem_id, :plant_id)
    end
end
