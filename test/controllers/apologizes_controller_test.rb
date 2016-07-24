require 'test_helper'

class ApologizesControllerTest < ActionController::TestCase
  setup do
    @apologize = apologizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apologizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apologize" do
    assert_difference('Apologize.count') do
      post :create, apologize: { apologize_image: @apologize.apologize_image, description: @apologize.description, person_id: @apologize.person_id }
    end

    assert_redirected_to apologize_path(assigns(:apologize))
  end

  test "should show apologize" do
    get :show, id: @apologize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apologize
    assert_response :success
  end

  test "should update apologize" do
    patch :update, id: @apologize, apologize: { apologize_image: @apologize.apologize_image, description: @apologize.description, person_id: @apologize.person_id }
    assert_redirected_to apologize_path(assigns(:apologize))
  end

  test "should destroy apologize" do
    assert_difference('Apologize.count', -1) do
      delete :destroy, id: @apologize
    end

    assert_redirected_to apologizes_path
  end
end
