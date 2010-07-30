require 'test_helper'

class BetasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:betas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beta" do
    assert_difference('Beta.count') do
      post :create, :beta => { }
    end

    assert_redirected_to beta_path(assigns(:beta))
  end

  test "should show beta" do
    get :show, :id => betas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => betas(:one).to_param
    assert_response :success
  end

  test "should update beta" do
    put :update, :id => betas(:one).to_param, :beta => { }
    assert_redirected_to beta_path(assigns(:beta))
  end

  test "should destroy beta" do
    assert_difference('Beta.count', -1) do
      delete :destroy, :id => betas(:one).to_param
    end

    assert_redirected_to betas_path
  end
end
