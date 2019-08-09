require 'test_helper'

class CollaborationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collaboration = collaborations(:one)
  end

  test "should get index" do
    get collaborations_url, as: :json
    assert_response :success
  end

  test "should create collaboration" do
    assert_difference('Collaboration.count') do
      post collaborations_url, params: { collaboration: { course_id: @collaboration.course_id, user_id: @collaboration.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show collaboration" do
    get collaboration_url(@collaboration), as: :json
    assert_response :success
  end

  test "should update collaboration" do
    patch collaboration_url(@collaboration), params: { collaboration: { course_id: @collaboration.course_id, user_id: @collaboration.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy collaboration" do
    assert_difference('Collaboration.count', -1) do
      delete collaboration_url(@collaboration), as: :json
    end

    assert_response 204
  end
end
