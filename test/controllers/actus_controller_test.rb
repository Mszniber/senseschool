require 'test_helper'

class ActusControllerTest < ActionController::TestCase
  setup do
    @actu = actus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actu" do
    assert_difference('Actu.count') do
      post :create, actu: {  }
    end

    assert_redirected_to actu_path(assigns(:actu))
  end

  test "should show actu" do
    get :show, id: @actu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actu
    assert_response :success
  end

  test "should update actu" do
    patch :update, id: @actu, actu: {  }
    assert_redirected_to actu_path(assigns(:actu))
  end

  test "should destroy actu" do
    assert_difference('Actu.count', -1) do
      delete :destroy, id: @actu
    end

    assert_redirected_to actus_path
  end
end
