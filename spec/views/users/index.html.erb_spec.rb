require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :email => "email@email.com",
        :password => "foobar",
        :password_confirmation => "foobar"
      ),
      User.create!(
        :name => "Name2",
        :email => "name2@email.com",
        :password => "foobar",
        :password_confirmation => "foobar"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
    assert_select "tr>td", :text => "email@email.com".to_s, :count => 1
    assert_select "tr>td", :text => "name2@email.com".to_s, :count => 1
  end
end
