require 'test_helper'

class ParticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participation = participations(:one)
  end

  test "should get index" do
    get participations_url, as: :json
    assert_response :success
  end

  test "should create participation" do
    assert_difference('Participation.count') do
      post participations_url, params: { participation: { selective_processes_id: @participation.selective_processes_id, users_id: @participation.users_id } }, as: :json
    end

    assert_response 201
  end

  test "should show participation" do
    get participation_url(@participation), as: :json
    assert_response :success
  end

  test "should update participation" do
    patch participation_url(@participation), params: { participation: { selective_processes_id: @participation.selective_processes_id, users_id: @participation.users_id } }, as: :json
    assert_response 200
  end

  test "should destroy participation" do
    assert_difference('Participation.count', -1) do
      delete participation_url(@participation), as: :json
    end

    assert_response 204
  end
end
