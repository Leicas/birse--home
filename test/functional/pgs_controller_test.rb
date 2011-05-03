require 'test_helper'

class PgsControllerTest < ActionController::TestCase
  setup do
    @pg = pgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pg" do
    assert_difference('Pg.count') do
      post :create, :pg => @pg.attributes
    end

    assert_redirected_to pg_path(assigns(:pg))
  end

  test "should show pg" do
    get :show, :id => @pg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pg.to_param
    assert_response :success
  end

  test "should update pg" do
    put :update, :id => @pg.to_param, :pg => @pg.attributes
    assert_redirected_to pg_path(assigns(:pg))
  end

  test "should destroy pg" do
    assert_difference('Pg.count', -1) do
      delete :destroy, :id => @pg.to_param
    end

    assert_redirected_to pgs_path
  end
end
