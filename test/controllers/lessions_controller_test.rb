require 'test_helper'

class LessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lession = lessions(:one)
  end

  test "should get index" do
    get lessions_url, as: :json
    assert_response :success
  end

  test "should create lession" do
    assert_difference('Lession.count') do
      post lessions_url, params: { lession: { courses_id: @lession.courses_id, day: @lession.day, duration: @lession.duration, startTime: @lession.startTime } }, as: :json
    end

    assert_response 201
  end

  test "should show lession" do
    get lession_url(@lession), as: :json
    assert_response :success
  end

  test "should update lession" do
    patch lession_url(@lession), params: { lession: { courses_id: @lession.courses_id, day: @lession.day, duration: @lession.duration, startTime: @lession.startTime } }, as: :json
    assert_response 200
  end

  test "should destroy lession" do
    assert_difference('Lession.count', -1) do
      delete lession_url(@lession), as: :json
    end

    assert_response 204
  end
end
