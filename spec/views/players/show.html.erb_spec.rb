require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :fname => "",
      :lname => "",
      :nickname => "",
      :phone => "",
      :email => "Email",
      :is_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Email/)
    rendered.should match(/false/)
  end
end
