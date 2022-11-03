class HealthProblemsController < ApplicationController
  before_action :set_health_problem, only: %i[ show update destroy ]

  # GET /health_problems
  def index
    @health_problems = HealthProblem.all

    render json: @health_problems
  end

  # GET /health_problems/1
  def show
    render json: @health_problem
  end

  # POST /health_problems
  def create
    @health_problem = HealthProblem.new(health_problem_params)

    if @health_problem.save
      render json: @health_problem, status: :created, location: @health_problem
    else
      render json: @health_problem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /health_problems/1
  def update
    if @health_problem.update(health_problem_params)
      render json: @health_problem
    else
      render json: @health_problem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /health_problems/1
  def destroy
    @health_problem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_problem
      @health_problem = HealthProblem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def health_problem_params
      params.require(:health_problem).permit(:name)
    end
end
