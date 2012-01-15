require 'test_helper'

class ListRecordsControllerTest < ActionController::TestCase
  setup do
    @list_record = list_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_record" do
    assert_difference('ListRecord.count') do
      post :create, :list_record => @list_record.attributes
    end

    assert_redirected_to list_record_path(assigns(:list_record))
  end

  test "should show list_record" do
    get :show, :id => @list_record.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @list_record.to_param
    assert_response :success
  end

  test "should update list_record" do
    put :update, :id => @list_record.to_param, :list_record => @list_record.attributes
    assert_redirected_to list_record_path(assigns(:list_record))
  end

  test "should destroy list_record" do
    assert_difference('ListRecord.count', -1) do
      delete :destroy, :id => @list_record.to_param
    end

    assert_redirected_to list_records_path
  end
end
