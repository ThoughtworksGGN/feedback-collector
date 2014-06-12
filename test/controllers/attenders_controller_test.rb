require 'test_helper'

class AttendersControllerTest < ActionController::TestCase
  setup do
    @attender = attenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attender" do
    assert_difference('Attender.count') do
      post :create, attender: { company: @attender.company, email: @attender.email, name: @attender.name, phone: @attender.phone }
    end

    assert_redirected_to attender_path(assigns(:attender))
  end

  test "should show attender" do
    get :show, id: @attender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attender
    assert_response :success
  end

  test "should update attender" do
    patch :update, id: @attender, attender: { company: @attender.company, email: @attender.email, name: @attender.name, phone: @attender.phone }
    assert_redirected_to attender_path(assigns(:attender))
  end

  test "should destroy attender" do
    assert_difference('Attender.count', -1) do
      delete :destroy, id: @attender
    end

    assert_redirected_to attenders_path
  end
end
