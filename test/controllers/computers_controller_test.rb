require 'test_helper'

class ComputersControllerTest < ActionController::TestCase
  setup do
    @computer = computers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computer" do
    assert_difference('Computer.count') do
      post :create, computer: { mac_address: @computer.mac_address, user_id: @computer.user_id }
    end

    assert_redirected_to computer_path(assigns(:computer))
  end

  test "should show computer" do
    get :show, id: @computer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computer
    assert_response :success
  end

  test "should update computer" do
    patch :update, id: @computer, computer: { mac_address: @computer.mac_address, user_id: @computer.user_id }
    assert_redirected_to computer_path(assigns(:computer))
  end

  test "should destroy computer" do
    assert_difference('Computer.count', -1) do
      delete :destroy, id: @computer
    end

    assert_redirected_to computers_path
  end
end
