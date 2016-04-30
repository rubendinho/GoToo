require 'rails_helper'

RSpec.describe "attractions/index", type: :view do
  before(:each) do
    assign(:attractions, [
      Attraction.create!(
        :name => "Name",
        :type => 1,
        :address => "Address",
        :latitude => "9.99",
        :longitude => "9.99",
        :description => "MyText"
      ),
      Attraction.create!(
        :name => "Name",
        :type => 1,
        :address => "Address",
        :latitude => "9.99",
        :longitude => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of attractions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
