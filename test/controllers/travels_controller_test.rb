require 'test_helper'

class TravelsControllerTest < ActionController::TestCase
  setup do
    @travel = travels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel" do
    assert_difference('Travel.count') do
      post :create, travel: { bus_details: @travel.bus_details, date_of_travel: @travel.date_of_travel, number_of_seats: @travel.number_of_seats, remarks_and_conditions: @travel.remarks_and_conditions, time_of_travel: @travel.time_of_travel, travel_agency: @travel.travel_agency, travel_code: @travel.travel_code, travel_from: @travel.travel_from, travel_mode: @travel.travel_mode, travelling_to: @travel.travelling_to }
    end

    assert_redirected_to travel_path(assigns(:travel))
  end

  test "should show travel" do
    get :show, id: @travel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel
    assert_response :success
  end

  test "should update travel" do
    patch :update, id: @travel, travel: { bus_details: @travel.bus_details, date_of_travel: @travel.date_of_travel, number_of_seats: @travel.number_of_seats, remarks_and_conditions: @travel.remarks_and_conditions, time_of_travel: @travel.time_of_travel, travel_agency: @travel.travel_agency, travel_code: @travel.travel_code, travel_from: @travel.travel_from, travel_mode: @travel.travel_mode, travelling_to: @travel.travelling_to }
    assert_redirected_to travel_path(assigns(:travel))
  end

  test "should destroy travel" do
    assert_difference('Travel.count', -1) do
      delete :destroy, id: @travel
    end

    assert_redirected_to travels_path
  end
end
