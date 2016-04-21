require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :city_name => "City Name",
        :state_province => "State Province",
        :country => 1,
        :description => "MyText"
      ),
      Location.create!(
        :city_name => "City Name",
        :state_province => "State Province",
        :country => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "City Name".to_s, :count => 2
    assert_select "tr>td", :text => "State Province".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
