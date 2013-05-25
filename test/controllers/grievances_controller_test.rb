require 'test_helper'

class GrievancesControllerTest < ActionController::TestCase
  setup do
    @grievance = grievances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grievances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grievance" do
    assert_difference('Grievance.count') do
      post :create, grievance: { content: @grievance.content, downs: @grievance.downs, ups: @grievance.ups }
    end

    assert_redirected_to grievance_path(assigns(:grievance))
  end

  test "should show grievance" do
    get :show, id: @grievance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grievance
    assert_response :success
  end

  test "should update grievance" do
    patch :update, id: @grievance, grievance: { content: @grievance.content, downs: @grievance.downs, ups: @grievance.ups }
    assert_redirected_to grievance_path(assigns(:grievance))
  end

  test "should destroy grievance" do
    assert_difference('Grievance.count', -1) do
      delete :destroy, id: @grievance
    end

    assert_redirected_to grievances_path
  end
end
