require 'test_helper'

class VisitingSchedulesControllerTest < ActionController::TestCase
  setup do
    @visiting_schedule = visiting_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visiting_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visiting_schedule" do
    assert_difference('VisitingSchedule.count') do
      post :create, visiting_schedule: { appointment_time: @visiting_schedule.appointment_time }
    end

    assert_redirected_to visiting_schedule_path(assigns(:visiting_schedule))
  end

  test "should show visiting_schedule" do
    get :show, id: @visiting_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visiting_schedule
    assert_response :success
  end

  test "should update visiting_schedule" do
    patch :update, id: @visiting_schedule, visiting_schedule: { appointment_time: @visiting_schedule.appointment_time }
    assert_redirected_to visiting_schedule_path(assigns(:visiting_schedule))
  end

  test "should destroy visiting_schedule" do
    assert_difference('VisitingSchedule.count', -1) do
      delete :destroy, id: @visiting_schedule
    end

    assert_redirected_to visiting_schedules_path
  end
end
