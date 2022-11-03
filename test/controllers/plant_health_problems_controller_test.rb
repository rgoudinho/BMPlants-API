require "test_helper"

class PlantHealthProblemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_health_problem = plant_health_problems(:one)
  end

  test "should get index" do
    get plant_health_problems_url, as: :json
    assert_response :success
  end

  test "should create plant_health_problem" do
    assert_difference("PlantHealthProblem.count") do
      post plant_health_problems_url, params: { plant_health_problem: { health_problem_id: @plant_health_problem.health_problem_id, plant_id: @plant_health_problem.plant_id } }, as: :json
    end

    assert_response :created
  end

  test "should show plant_health_problem" do
    get plant_health_problem_url(@plant_health_problem), as: :json
    assert_response :success
  end

  test "should update plant_health_problem" do
    patch plant_health_problem_url(@plant_health_problem), params: { plant_health_problem: { health_problem_id: @plant_health_problem.health_problem_id, plant_id: @plant_health_problem.plant_id } }, as: :json
    assert_response :success
  end

  test "should destroy plant_health_problem" do
    assert_difference("PlantHealthProblem.count", -1) do
      delete plant_health_problem_url(@plant_health_problem), as: :json
    end

    assert_response :no_content
  end
end
