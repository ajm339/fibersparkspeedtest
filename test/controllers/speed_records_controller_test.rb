require 'test_helper'

class SpeedRecordsControllerTest < ActionController::TestCase
  setup do
    @speed_record = speed_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speed_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speed_record" do
    assert_difference('SpeedRecord.count') do
      post :create, speed_record: { download_speed: @speed_record.download_speed, hostname: @speed_record.hostname, ip_address: @speed_record.ip_address, jitter: @speed_record.jitter, latency: @speed_record.latency, upload_speed: @speed_record.upload_speed }
    end

    assert_redirected_to speed_record_path(assigns(:speed_record))
  end

  test "should show speed_record" do
    get :show, id: @speed_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speed_record
    assert_response :success
  end

  test "should update speed_record" do
    patch :update, id: @speed_record, speed_record: { download_speed: @speed_record.download_speed, hostname: @speed_record.hostname, ip_address: @speed_record.ip_address, jitter: @speed_record.jitter, latency: @speed_record.latency, upload_speed: @speed_record.upload_speed }
    assert_redirected_to speed_record_path(assigns(:speed_record))
  end

  test "should destroy speed_record" do
    assert_difference('SpeedRecord.count', -1) do
      delete :destroy, id: @speed_record
    end

    assert_redirected_to speed_records_path
  end
end
