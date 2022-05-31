require "test_helper"

class PlanvitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planvital = planvitals(:one)
  end

  test "should get index" do
    get planvitals_url
    assert_response :success
  end

  test "should get new" do
    get new_planvital_url
    assert_response :success
  end

  test "should create planvital" do
    assert_difference("Planvital.count") do
      post planvitals_url, params: { planvital: { date: @planvital.date, fundA: @planvital.fundA, fundC: @planvital.fundC, fundE: @planvital.fundE } }
    end

    assert_redirected_to planvital_url(Planvital.last)
  end

  test "should show planvital" do
    get planvital_url(@planvital)
    assert_response :success
  end

  test "should get edit" do
    get edit_planvital_url(@planvital)
    assert_response :success
  end

  test "should update planvital" do
    patch planvital_url(@planvital), params: { planvital: { date: @planvital.date, fundA: @planvital.fundA, fundC: @planvital.fundC, fundE: @planvital.fundE } }
    assert_redirected_to planvital_url(@planvital)
  end

  test "should destroy planvital" do
    assert_difference("Planvital.count", -1) do
      delete planvital_url(@planvital)
    end

    assert_redirected_to planvitals_url
  end
end
