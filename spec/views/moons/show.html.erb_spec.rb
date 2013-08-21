require 'spec_helper'

describe "moons/show" do
  before(:each) do
    @moon = assign(:moon, stub_model(Moon,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/10/)
    rendered.should match(/11/)
    rendered.should match(/12/)
    rendered.should match(/13/)
    rendered.should match(/14/)
  end
end
