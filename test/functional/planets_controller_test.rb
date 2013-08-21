require 'test_helper'

class PlanetsControllerTest < ActionController::TestCase
  setup do
    @planet = planets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planet" do
    assert_difference('Planet.count') do
      post :create, planet: { alliance_id: @planet.alliance_id, amoniate: @planet.amoniate, atmosphere: @planet.atmosphere, carbone: @planet.carbone, fissionable_material: @planet.fissionable_material, habitables: @planet.habitables, mass: @planet.mass, mediumtemp: @planet.mediumtemp, metal: @planet.metal, metal_cristal: @planet.metal_cristal, n_p: @planet.n_p, organicA: @planet.organicA, organicB: @planet.organicB, organicC: @planet.organicC, position: @planet.position, star_id: @planet.star_id, type: @planet.type, user_id: @planet.user_id, water: @planet.water }
    end

    assert_redirected_to planet_path(assigns(:planet))
  end

  test "should show planet" do
    get :show, id: @planet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planet
    assert_response :success
  end

  test "should update planet" do
    put :update, id: @planet, planet: { alliance_id: @planet.alliance_id, amoniate: @planet.amoniate, atmosphere: @planet.atmosphere, carbone: @planet.carbone, fissionable_material: @planet.fissionable_material, habitables: @planet.habitables, mass: @planet.mass, mediumtemp: @planet.mediumtemp, metal: @planet.metal, metal_cristal: @planet.metal_cristal, n_p: @planet.n_p, organicA: @planet.organicA, organicB: @planet.organicB, organicC: @planet.organicC, position: @planet.position, star_id: @planet.star_id, type: @planet.type, user_id: @planet.user_id, water: @planet.water }
    assert_redirected_to planet_path(assigns(:planet))
  end

  test "should destroy planet" do
    assert_difference('Planet.count', -1) do
      delete :destroy, id: @planet
    end

    assert_redirected_to planets_path
  end
end
