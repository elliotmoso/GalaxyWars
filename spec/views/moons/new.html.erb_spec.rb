require 'spec_helper'

describe "moons/new" do
  before(:each) do
    assign(:moon, stub_model(Moon,
      :planet => nil,
      :position => "9.99",
      :mass => "9.99",
      :type => 1,
      :atmosphere => 1,
      :metal => 1,
      :water => 1,
      :amoniate => 1,
      :carbone => 1,
      :n_p => 1,
      :fissionable_material => 1,
      :mediumtemp => 1,
      :alliance => nil,
      :user => nil,
      :organicA => 1,
      :organicB => 1,
      :organicC => 1,
      :metal_cristal => 1,
      :habitables => 1
    ).as_new_record)
  end

  it "renders new moon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moons_path, :method => "post" do
      assert_select "input#moon_planet", :name => "moon[planet]"
      assert_select "input#moon_position", :name => "moon[position]"
      assert_select "input#moon_mass", :name => "moon[mass]"
      assert_select "input#moon_type", :name => "moon[type]"
      assert_select "input#moon_atmosphere", :name => "moon[atmosphere]"
      assert_select "input#moon_metal", :name => "moon[metal]"
      assert_select "input#moon_water", :name => "moon[water]"
      assert_select "input#moon_amoniate", :name => "moon[amoniate]"
      assert_select "input#moon_carbone", :name => "moon[carbone]"
      assert_select "input#moon_n_p", :name => "moon[n_p]"
      assert_select "input#moon_fissionable_material", :name => "moon[fissionable_material]"
      assert_select "input#moon_mediumtemp", :name => "moon[mediumtemp]"
      assert_select "input#moon_alliance", :name => "moon[alliance]"
      assert_select "input#moon_user", :name => "moon[user]"
      assert_select "input#moon_organicA", :name => "moon[organicA]"
      assert_select "input#moon_organicB", :name => "moon[organicB]"
      assert_select "input#moon_organicC", :name => "moon[organicC]"
      assert_select "input#moon_metal_cristal", :name => "moon[metal_cristal]"
      assert_select "input#moon_habitables", :name => "moon[habitables]"
    end
  end
end
