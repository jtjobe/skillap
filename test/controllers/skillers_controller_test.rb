require 'test_helper'

class SkillersControllerTest < ActionController::TestCase
  setup do
    @skiller = skillers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skillers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skiller" do
    assert_difference('Skiller.count') do
      post :create, skiller: { bio: @skiller.bio, first_name: @skiller.first_name, last_name: @skiller.last_name, location: @skiller.location, social_link_1: @skiller.social_link_1, social_link_2: @skiller.social_link_2, user_id: @skiller.user_id }
    end

    assert_redirected_to skiller_path(assigns(:skiller))
  end

  test "should show skiller" do
    get :show, id: @skiller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skiller
    assert_response :success
  end

  test "should update skiller" do
    patch :update, id: @skiller, skiller: { bio: @skiller.bio, first_name: @skiller.first_name, last_name: @skiller.last_name, location: @skiller.location, social_link_1: @skiller.social_link_1, social_link_2: @skiller.social_link_2, user_id: @skiller.user_id }
    assert_redirected_to skiller_path(assigns(:skiller))
  end

  test "should destroy skiller" do
    assert_difference('Skiller.count', -1) do
      delete :destroy, id: @skiller
    end

    assert_redirected_to skillers_path
  end
end
