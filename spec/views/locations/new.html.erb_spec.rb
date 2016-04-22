require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :city_name => "MyString",
      :state_province => "MyString",
      :country => 1,
      :description => "MyText"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_city_name[name=?]", "location[city_name]"

      assert_select "input#location_state_province[name=?]", "location[state_province]"

      assert_select "input#location_country[name=?]", "location[country]"

      assert_select "textarea#location_description[name=?]", "location[description]"
    end
  end
end
