require 'spec_helper'

describe "moons/index" do
  before(:each) do
    assign(:moons, [
      stub_model(Moon,
        :planet => nil,
        :position => "9.99",
        :mass => "9.99",
        :type => 1,
        :atmosphere => 2,
        :metal => 3,
        :water => 4,
        :amoniate => 5,
        :carbone => 6,
        :n_p => 7,
        :fissionable_material => 8,
        :mediumtemp => 9,
        :alliance => nil,
        :user => nil,
        :organicA => 10,
        :organicB => 11,
        :organicC => 12,
        :metal_cristal => 13,
        :habitables => 14
      ),
      stub_model(Moon,
        :planet => nil,
        :position => "9.99",
        :mass => "9.99",
        :type => 1,
        :atmosphere => 2,
        :metal => 3,
        :water => 4,
        :amoniate => 5,
        :carbone => 6,
        :n_p => 7,
        :fissionable_material => 8,
        :mediumtemp => 9,
        :alliance => nil,
        :user => nil,
        :organicA => 10,
        :organicB => 11,
        :organicC => 12,
        :metal_cristal => 13,
        :habitables => 14
      )
    ])
  end

  it "renders a list of moons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
  end
end
