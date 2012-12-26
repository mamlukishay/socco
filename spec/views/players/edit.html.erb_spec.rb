require 'spec_helper'

describe "players/edit" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :fname => "",
      :lname => "",
      :nickname => "",
      :phone => "",
      :email => "MyString",
      :is_active => false
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path(@player), :method => "post" do
      assert_select "input#player_fname", :name => "player[fname]"
      assert_select "input#player_lname", :name => "player[lname]"
      assert_select "input#player_nickname", :name => "player[nickname]"
      assert_select "input#player_phone", :name => "player[phone]"
      assert_select "input#player_email", :name => "player[email]"
      assert_select "input#player_is_active", :name => "player[is_active]"
    end
  end
end
