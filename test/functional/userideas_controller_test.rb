require 'test_helper'

class UserideasControllerTest < ActionController::TestCase
  setup do
    @useridea = userideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create useridea" do
    assert_difference('Useridea.count') do
      post :create, useridea: { follow: @useridea.follow, idea_id: @useridea.idea_id, initiate: @useridea.initiate, user_id: @useridea.user_id }
    end

    assert_redirected_to useridea_path(assigns(:useridea))
  end

  test "should show useridea" do
    get :show, id: @useridea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @useridea
    assert_response :success
  end

  test "should update useridea" do
    put :update, id: @useridea, useridea: { follow: @useridea.follow, idea_id: @useridea.idea_id, initiate: @useridea.initiate, user_id: @useridea.user_id }
    assert_redirected_to useridea_path(assigns(:useridea))
  end

  test "should destroy useridea" do
    assert_difference('Useridea.count', -1) do
      delete :destroy, id: @useridea
    end

    assert_redirected_to userideas_path
  end
end
