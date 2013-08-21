require 'spec_helper'

describe "stars/new" do
  before(:each) do
    assign(:star, stub_model(Star,
      :name => "MyString",
      :x => 1,
      :y => 1,
      :z => 1,
      :mass => 1.5,
      :radium => "9.99",
      :luminosity => "9.99",
      :temp => 1,
      :color => 1,
      :clase => "MyString",
      :aliance => nil,
      :user => nil,
      :near => "MyText",
      :intern_line => "9.99",
      :hot_line => "9.99",
      :snow_line => "9.99",
      :cool_line => "9.99"
    ).as_new_record)
  end

  it "renders new star form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stars_path, :method => "post" do
      assert_select "input#star_name", :name => "star[name]"
      assert_select "input#star_x", :name => "star[x]"
      assert_select "input#star_y", :name => "star[y]"
      assert_select "input#star_z", :name => "star[z]"
      assert_select "input#star_mass", :name => "star[mass]"
      assert_select "input#star_radium", :name => "star[radium]"
      assert_select "input#star_luminosity", :name => "star[luminosity]"
      assert_select "input#star_temp", :name => "star[temp]"
      assert_select "input#star_color", :name => "star[color]"
      assert_select "input#star_clase", :name => "star[clase]"
      assert_select "input#star_aliance", :name => "star[aliance]"
      assert_select "input#star_user", :name => "star[user]"
      assert_select "textarea#star_near", :name => "star[near]"
      assert_select "input#star_intern_line", :name => "star[intern_line]"
      assert_select "input#star_hot_line", :name => "star[hot_line]"
      assert_select "input#star_snow_line", :name => "star[snow_line]"
      assert_select "input#star_cool_line", :name => "star[cool_line]"
    end
  end
end
