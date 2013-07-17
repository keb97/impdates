require 'test_helper'

class ImpdatesControllerTest < ActionController::TestCase
  setup do
    @impdate = impdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:impdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create impdate" do
    assert_difference('Impdate.count') do
      post :create, impdate: { explanation: @impdate.explanation, impdate: @impdate.impdate }
    end

    assert_redirected_to impdate_path(assigns(:impdate))
  end

  test "should show impdate" do
    get :show, id: @impdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @impdate
    assert_response :success
  end

  test "should update impdate" do
    put :update, id: @impdate, impdate: { explanation: @impdate.explanation, impdate: @impdate.impdate }
    assert_redirected_to impdate_path(assigns(:impdate))
  end

  test "should destroy impdate" do
    assert_difference('Impdate.count', -1) do
      delete :destroy, id: @impdate
    end

    assert_redirected_to impdates_path
  end
end
