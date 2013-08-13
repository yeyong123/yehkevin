require 'test_helper'

class BananersControllerTest < ActionController::TestCase
  setup do
    @bananer = bananers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bananers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bananer" do
    assert_difference('Bananer.count') do
      post :create, bananer: { button: @bananer.button, describe: @bananer.describe, image: @bananer.image, url: @bananer.url }
    end

    assert_redirected_to bananer_path(assigns(:bananer))
  end

  test "should show bananer" do
    get :show, id: @bananer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bananer
    assert_response :success
  end

  test "should update bananer" do
    put :update, id: @bananer, bananer: { button: @bananer.button, describe: @bananer.describe, image: @bananer.image, url: @bananer.url }
    assert_redirected_to bananer_path(assigns(:bananer))
  end

  test "should destroy bananer" do
    assert_difference('Bananer.count', -1) do
      delete :destroy, id: @bananer
    end

    assert_redirected_to bananers_path
  end
end
