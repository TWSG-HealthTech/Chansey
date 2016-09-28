require 'test_helper'

class VitalRecordsControllerTest < ActionController::TestCase
  setup do
    @vital_record = vital_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vital_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vital_record" do
    assert_difference('VitalRecord.count') do
      post :create, vital_record: { bp_high: @vital_record.bp_high, bp_low: @vital_record.bp_low, height: @vital_record.height, pulse: @vital_record.pulse, temperature: @vital_record.temperature, weight: @vital_record.weight }
    end

    assert_redirected_to vital_record_path(assigns(:vital_record))
  end

  test "should show vital_record" do
    get :show, id: @vital_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vital_record
    assert_response :success
  end

  test "should update vital_record" do
    patch :update, id: @vital_record, vital_record: { bp_high: @vital_record.bp_high, bp_low: @vital_record.bp_low, height: @vital_record.height, pulse: @vital_record.pulse, temperature: @vital_record.temperature, weight: @vital_record.weight }
    assert_redirected_to vital_record_path(assigns(:vital_record))
  end

  test "should destroy vital_record" do
    assert_difference('VitalRecord.count', -1) do
      delete :destroy, id: @vital_record
    end

    assert_redirected_to vital_records_path
  end
end
