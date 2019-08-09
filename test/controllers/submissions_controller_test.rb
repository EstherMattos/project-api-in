require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get submissions_url, as: :json
    assert_response :success
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { link: @submission.link, observation: @submission.observation, performance: @submission.performance, status: @submission.status, subable_id: @submission.subable_id } }, as: :json
    end

    assert_response 201
  end

  test "should show submission" do
    get submission_url(@submission), as: :json
    assert_response :success
  end

  test "should update submission" do
    patch submission_url(@submission), params: { submission: { link: @submission.link, observation: @submission.observation, performance: @submission.performance, status: @submission.status, subable_id: @submission.subable_id } }, as: :json
    assert_response 200
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete submission_url(@submission), as: :json
    end

    assert_response 204
  end
end
