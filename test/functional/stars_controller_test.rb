require 'test_helper'

class StarsControllerTest < ActionController::TestCase
  setup do
    @star = stars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create star" do
    assert_difference('Star.count') do
      post :create, star: { aliance_id: @star.aliance_id, clase: @star.clase, color: @star.color, cool_line: @star.cool_line, hot_line: @star.hot_line, intern_line: @star.intern_line, luminosity: @star.luminosity, mass: @star.mass, name: @star.name, near: @star.near, radium: @star.radium, snow_line: @star.snow_line, temp: @star.temp, user_id: @star.user_id, x: @star.x, y: @star.y, z: @star.z }
    end

    assert_redirected_to star_path(assigns(:star))
  end

  test "should show star" do
    get :show, id: @star
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @star
    assert_response :success
  end

  test "should update star" do
    put :update, id: @star, star: { aliance_id: @star.aliance_id, clase: @star.clase, color: @star.color, cool_line: @star.cool_line, hot_line: @star.hot_line, intern_line: @star.intern_line, luminosity: @star.luminosity, mass: @star.mass, name: @star.name, near: @star.near, radium: @star.radium, snow_line: @star.snow_line, temp: @star.temp, user_id: @star.user_id, x: @star.x, y: @star.y, z: @star.z }
    assert_redirected_to star_path(assigns(:star))
  end

  test "should destroy star" do
    assert_difference('Star.count', -1) do
      delete :destroy, id: @star
    end

    assert_redirected_to stars_path
  end
end
