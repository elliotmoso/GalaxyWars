require 'spec_helper'

describe "planets/new" do
  before(:each) do
    assign(:planet, stub_model(Planet,
      :star => nil,
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

  it "renders new planet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => planets_path, :method => "post" do
      assert_select "input#planet_star", :name => "planet[star]"
      assert_select "input#planet_position", :name => "planet[position]"
      assert_select "input#planet_mass", :name => "planet[mass]"
      assert_select "input#planet_type", :name => "planet[type]"
      assert_select "input#planet_atmosphere", :name => "planet[atmosphere]"
      assert_select "input#planet_metal", :name => "planet[metal]"
      assert_select "input#planet_water", :name => "planet[water]"
      assert_select "input#planet_amoniate", :name => "planet[amoniate]"
      assert_select "input#planet_carbone", :name => "planet[carbone]"
      assert_select "input#planet_n_p", :name => "planet[n_p]"
      assert_select "input#planet_fissionable_material", :name => "planet[fissionable_material]"
      assert_select "input#planet_mediumtemp", :name => "planet[mediumtemp]"
      assert_select "input#planet_alliance", :name => "planet[alliance]"
      assert_select "input#planet_user", :name => "planet[user]"
      assert_select "input#planet_organicA", :name => "planet[organicA]"
      assert_select "input#planet_organicB", :name => "planet[organicB]"
      assert_select "input#planet_organicC", :name => "planet[organicC]"
      assert_select "input#planet_metal_cristal", :name => "planet[metal_cristal]"
      assert_select "input#planet_habitables", :name => "planet[habitables]"
    end
  end
end
