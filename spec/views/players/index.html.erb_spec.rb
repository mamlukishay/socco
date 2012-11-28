require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :fname => "Fname",
        :lname => "Lname",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email => "Email",
        :nickname => "Nickname",
        :active? => false
      ),
      stub_model(Player,
        :fname => "Fname",
        :lname => "Lname",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email => "Email",
        :nickname => "Nickname",
        :active? => false
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
