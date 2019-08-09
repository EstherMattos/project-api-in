require 'test_helper'

class SelectiveProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selective_process = selective_processes(:one)
  end

  test "should get index" do
    get selective_processes_url, as: :json
    assert_response :success
  end

  test "should create selective_process" do
    assert_difference('SelectiveProcess.count') do
      post selective_processes_url, params: { selective_process: { finishDate: @selective_process.finishDate, registrationDeadline: @selective_process.registrationDeadline, schoolTerm: @selective_process.schoolTerm, startDate: @selective_process.startDate, year: @selective_process.year } }, as: :json
    end

    assert_response 201
  end

  test "should show selective_process" do
    get selective_process_url(@selective_process), as: :json
    assert_response :success
  end

  test "should update selective_process" do
    patch selective_process_url(@selective_process), params: { selective_process: { finishDate: @selective_process.finishDate, registrationDeadline: @selective_process.registrationDeadline, schoolTerm: @selective_process.schoolTerm, startDate: @selective_process.startDate, year: @selective_process.year } }, as: :json
    assert_response 200
  end

  test "should destroy selective_process" do
    assert_difference('SelectiveProcess.count', -1) do
      delete selective_process_url(@selective_process), as: :json
    end

    assert_response 204
  end
end
