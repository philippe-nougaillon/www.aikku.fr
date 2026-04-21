# frozen_string_literal: true

require "rails_helper"

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        description: "MyText"
      ),
      Client.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", text: "Name", count: 2
    assert_select "tr>td", text: "MyText", count: 2
  end
end
