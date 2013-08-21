require 'test_helper'

class MoonsControllerTest < ActionController::TestCase
  setup do
    @moon = moons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moon" do
    assert_difference('Moon.count') do
      post :create, moon: { aliance_id: @moon.aliance_id, amoniate: @moon.amoniate, atmosphere: @moon.atmosphere, carbone: @moon.carbone, fissionable_material: @moon.fissionable_material, habitables: @moon.habitables, mass: @moon.mass, mediumtemp: @moon.mediumtemp, metal: @moon.metal, metal_cristal: @moon.metal_cristal, n_p: @moon.n_p, organicA: @moon.organicA, organicB: @moon.organicB, organicC: @moon.organicC, position: @moon.position, star_id: @moon.star_id, type: @moon.type, user_id: @moon.user_id, water: @moon.water }
    end

    assert_redirected_to moon_path(assigns(:moon))
  end

  test "should show moon" do
    get :show, id: @moon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moon
    assert_response :success
  end

  test "should update moon" do
    put :update, id: @moon, moon: { aliance_id: @moon.aliance_id, amoniate: @moon.amoniate, atmosphere: @moon.atmosphere, carbone: @moon.carbone, fissionable_material: @moon.fissionable_material, habitables: @moon.habitables, mass: @moon.mass, mediumtemp: @moon.mediumtemp, metal: @moon.metal, metal_cristal: @moon.metal_cristal, n_p: @moon.n_p, organicA: @moon.organicA, organicB: @moon.organicB, organicC: @moon.organicC, position: @moon.position, star_id: @moon.star_id, type: @moon.type, user_id: @moon.user_id, water: @moon.water }
    assert_redirected_to moon_path(assigns(:moon))
  end

  test "should destroy moon" do
    assert_difference('Moon.count', -1) do
      delete :destroy, id: @moon
    end

    assert_redirected_to moons_path
  end
end
