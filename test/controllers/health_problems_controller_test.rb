require "test_helper"

class HealthProblemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_problem = health_problems(:one)
  end

  test "should get index" do
    get health_problems_url, as: :json
    assert_response :success
  end

  test "should create health_problem" do
    assert_difference("HealthProblem.count") do
      post health_problems_url, params: { health_problem: { name: @health_problem.name } }, as: :json
    end

    assert_response :created
  end

  test "should show health_problem" do
    get health_problem_url(@health_problem), as: :json
    assert_response :success
  end

  test "should update health_problem" do
    patch health_problem_url(@health_problem), params: { health_problem: { name: @health_problem.name } }, as: :json
    assert_response :success
  end

  test "should destroy health_problem" do
    assert_difference("HealthProblem.count", -1) do
      delete health_problem_url(@health_problem), as: :json
    end

    assert_response :no_content
  end
end
