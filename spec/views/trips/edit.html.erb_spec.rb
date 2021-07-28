require 'rails_helper'

RSpec.describe "trips/edit", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      seller: nil,
      name: "MyString"
    ))
  end

  it "renders the edit trip form" do
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input[name=?]", "trip[seller_id]"

      assert_select "input[name=?]", "trip[name]"
    end
  end
end
