require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        seller: nil,
        name: "Name"
      ),
      Trip.create!(
        seller: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
