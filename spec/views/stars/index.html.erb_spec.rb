require 'spec_helper'

describe "stars/index" do
  before(:each) do
    assign(:stars, [
      stub_model(Star,
        :name => "Name",
        :x => 1,
        :y => 2,
        :z => 3,
        :mass => 1.5,
        :radium => "9.99",
        :luminosity => "9.99",
        :temp => 4,
        :color => 5,
        :clase => "Clase",
        :aliance => nil,
        :user => nil,
        :near => "MyText",
        :intern_line => "9.99",
        :hot_line => "9.99",
        :snow_line => "9.99",
        :cool_line => "9.99"
      ),
      stub_model(Star,
        :name => "Name",
        :x => 1,
        :y => 2,
        :z => 3,
        :mass => 1.5,
        :radium => "9.99",
        :luminosity => "9.99",
        :temp => 4,
        :color => 5,
        :clase => "Clase",
        :aliance => nil,
        :user => nil,
        :near => "MyText",
        :intern_line => "9.99",
        :hot_line => "9.99",
        :snow_line => "9.99",
        :cool_line => "9.99"
      )
    ])
  end

  it "renders a list of stars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Clase".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
