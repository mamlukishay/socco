require 'spec_helper'

describe "players/edit" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :fname => "MyString",
      :lname => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :email => "MyString",
      :nickname => "MyString",
      :active? => false
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path(@player), :method => "post" do
      assert_select "input#player_fname", :name => "player[fname]"
      assert_select "input#player_lname", :name => "player[lname]"
      assert_select "input#player_phone1", :name => "player[phone1]"
      assert_select "input#player_phone2", :name => "player[phone2]"
      assert_select "input#player_email", :name => "player[email]"
      assert_select "input#player_nickname", :name => "player[nickname]"
      assert_select "input#player_active?", :name => "player[active?]"
    end
  end
end
