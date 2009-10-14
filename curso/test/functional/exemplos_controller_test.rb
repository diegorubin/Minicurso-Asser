require 'test_helper'

class ExemplosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exemplos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exemplo" do
    assert_difference('Exemplo.count') do
      post :create, :exemplo => { }
    end

    assert_redirected_to exemplo_path(assigns(:exemplo))
  end

  test "should show exemplo" do
    get :show, :id => exemplos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => exemplos(:one).to_param
    assert_response :success
  end

  test "should update exemplo" do
    put :update, :id => exemplos(:one).to_param, :exemplo => { }
    assert_redirected_to exemplo_path(assigns(:exemplo))
  end

  test "should destroy exemplo" do
    assert_difference('Exemplo.count', -1) do
      delete :destroy, :id => exemplos(:one).to_param
    end

    assert_redirected_to exemplos_path
  end
end
