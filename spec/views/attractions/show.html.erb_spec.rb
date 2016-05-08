require 'rails_helper'

RSpec.describe "attractions/show", type: :view do
  before(:each) do
    @attraction = assign(:attraction, Attraction.create!(
      :name => "Name",
      :type => 1,
      :address => "Address",
      :latitude => "9.99",
      :longitude => "9.99",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
