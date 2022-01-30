require 'rails_helper'

RSpec.describe "medals/index", type: :view do
  before(:each) do
    assign(:medals, [
      Medal.create!(
        code: "Code",
        name: "Name",
        title: "Title",
        weight: 2
      ),
      Medal.create!(
        code: "Code",
        name: "Name",
        title: "Title",
        weight: 2
      )
    ])
  end

  it "renders a list of medals" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
