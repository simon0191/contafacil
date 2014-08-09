require 'test_helper'

class AccountRecordsControllerTest < ActionController::TestCase
  setup do
    @account_record = account_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_record" do
    assert_difference('AccountRecord.count') do
      post :create, account_record: { account_id: @account_record.account_id, amount: @account_record.amount, date: @account_record.date, description: @account_record.description, record_type: @account_record.record_type }
    end

    assert_redirected_to account_record_path(assigns(:account_record))
  end

  test "should show account_record" do
    get :show, id: @account_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_record
    assert_response :success
  end

  test "should update account_record" do
    patch :update, id: @account_record, account_record: { account_id: @account_record.account_id, amount: @account_record.amount, date: @account_record.date, description: @account_record.description, record_type: @account_record.record_type }
    assert_redirected_to account_record_path(assigns(:account_record))
  end

  test "should destroy account_record" do
    assert_difference('AccountRecord.count', -1) do
      delete :destroy, id: @account_record
    end

    assert_redirected_to account_records_path
  end
end
