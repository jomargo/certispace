require 'test_helper'

class BillingCyclesControllerTest < ActionController::TestCase
  setup do
    @billing_cycle = billing_cycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billing_cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing_cycle" do
    assert_difference('BillingCycle.count') do
      post :create, billing_cycle: { amount_issued: @billing_cycle.amount_issued, date_issued: @billing_cycle.date_issued, plan_id: @billing_cycle.plan_id, user_id: @billing_cycle.user_id }
    end

    assert_redirected_to billing_cycle_path(assigns(:billing_cycle))
  end

  test "should show billing_cycle" do
    get :show, id: @billing_cycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing_cycle
    assert_response :success
  end

  test "should update billing_cycle" do
    patch :update, id: @billing_cycle, billing_cycle: { amount_issued: @billing_cycle.amount_issued, date_issued: @billing_cycle.date_issued, plan_id: @billing_cycle.plan_id, user_id: @billing_cycle.user_id }
    assert_redirected_to billing_cycle_path(assigns(:billing_cycle))
  end

  test "should destroy billing_cycle" do
    assert_difference('BillingCycle.count', -1) do
      delete :destroy, id: @billing_cycle
    end

    assert_redirected_to billing_cycles_path
  end
end
