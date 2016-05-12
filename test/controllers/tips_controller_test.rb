require 'test_helper'

class TipsControllerTest < ActionController::TestCase
  setup do
    @tip = tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tip" do
    assert_difference('Tip.count') do
      post :create, tip: { end_date: @tip.end_date, friday_amount: @tip.friday_amount, monday_amount: @tip.monday_amount, saturday_amount: @tip.saturday_amount, start_date: @tip.start_date, sunday_amount: @tip.sunday_amount, thursday_amount: @tip.thursday_amount, tuesday_amount: @tip.tuesday_amount, wednesday_amount: @tip.wednesday_amount }
    end

    assert_redirected_to tip_path(assigns(:tip))
  end

  test "should show tip" do
    get :show, id: @tip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tip
    assert_response :success
  end

  test "should update tip" do
    patch :update, id: @tip, tip: { end_date: @tip.end_date, friday_amount: @tip.friday_amount, monday_amount: @tip.monday_amount, saturday_amount: @tip.saturday_amount, start_date: @tip.start_date, sunday_amount: @tip.sunday_amount, thursday_amount: @tip.thursday_amount, tuesday_amount: @tip.tuesday_amount, wednesday_amount: @tip.wednesday_amount }
    assert_redirected_to tip_path(assigns(:tip))
  end

  test "should destroy tip" do
    assert_difference('Tip.count', -1) do
      delete :destroy, id: @tip
    end

    assert_redirected_to tips_path
  end
end
