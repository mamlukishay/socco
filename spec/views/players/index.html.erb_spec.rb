require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :fname => "",
        :lname => "",
        :nickname => "",
        :phone => "",
        :email => "Email",
        :is_active => false
      ),
      stub_model(Player,
        :fname => "",
        :lname => "",
        :nickname => "",
        :phone => "",
        :email => "Email",
        :is_active => false
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
