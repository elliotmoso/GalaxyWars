require 'spec_helper'

describe "stars/show" do
  before(:each) do
    @star = assign(:star, stub_model(Star,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/1.5/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Clase/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
