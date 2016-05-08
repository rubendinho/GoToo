require 'rails_helper'

RSpec.describe "attractions/edit", type: :view do
  before(:each) do
    @attraction = assign(:attraction, Attraction.create!(
      :name => "MyString",
      :type => 1,
      :address => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :description => "MyText"
    ))
  end

  it "renders the edit attraction form" do
    render

    assert_select "form[action=?][method=?]", attraction_path(@attraction), "post" do

      assert_select "input#attraction_name[name=?]", "attraction[name]"

      assert_select "input#attraction_type[name=?]", "attraction[type]"

      assert_select "input#attraction_address[name=?]", "attraction[address]"

      assert_select "input#attraction_latitude[name=?]", "attraction[latitude]"

      assert_select "input#attraction_longitude[name=?]", "attraction[longitude]"

      assert_select "textarea#attraction_description[name=?]", "attraction[description]"
    end
  end
end
