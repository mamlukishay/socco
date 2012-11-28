require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :fname => "Fname",
      :lname => "Lname",
      :phone1 => "Phone1",
      :phone2 => "Phone2",
      :email => "Email",
      :nickname => "Nickname",
      :active? => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    rendered.should match(/Lname/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Email/)
    rendered.should match(/Nickname/)
    rendered.should match(/false/)
  end
end
