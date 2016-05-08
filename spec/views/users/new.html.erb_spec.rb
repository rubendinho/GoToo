require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :hometown => "MyString",
      :citizenship => 1,
      :gender => 1,
      :age => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_hometown[name=?]", "user[hometown]"

      assert_select "input#user_citizenship[name=?]", "user[citizenship]"

      assert_select "input#user_gender[name=?]", "user[gender]"

      assert_select "input#user_age[name=?]", "user[age]"
    end
  end
end
