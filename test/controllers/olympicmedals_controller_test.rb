require 'test_helper'

class OlympicmedalsControllerTest < ActionController::TestCase
  setup do
    @olympicmedal = olympicmedals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:olympicmedals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create olympicmedal" do
    assert_difference('Olympicmedal.count') do
      post :create, olympicmedal: { athlete_name: @olympicmedal.athlete_name, country: @olympicmedal.country, event: @olympicmedal.event, eventdate: @olympicmedal.eventdate, medal_type: @olympicmedal.medal_type }
    end

    assert_redirected_to olympicmedal_path(assigns(:olympicmedal))
  end

  test "should show olympicmedal" do
    get :show, id: @olympicmedal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @olympicmedal
    assert_response :success
  end

  test "should update olympicmedal" do
    patch :update, id: @olympicmedal, olympicmedal: { athlete_name: @olympicmedal.athlete_name, country: @olympicmedal.country, event: @olympicmedal.event, eventdate: @olympicmedal.eventdate, medal_type: @olympicmedal.medal_type }
    assert_redirected_to olympicmedal_path(assigns(:olympicmedal))
  end

  test "should destroy olympicmedal" do
    assert_difference('Olympicmedal.count', -1) do
      delete :destroy, id: @olympicmedal
    end

    assert_redirected_to olympicmedals_path
  end
end
