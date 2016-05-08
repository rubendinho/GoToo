require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city_name => "City Name",
      :state_province => "State Province",
      :country => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City Name/)
    expect(rendered).to match(/State Province/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
