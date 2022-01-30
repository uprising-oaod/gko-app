require 'rails_helper'

RSpec.describe "medals/show", type: :view do
  before(:each) do
    @medal = assign(:medal, Medal.create!(
      code: "Code",
      name: "Name",
      title: "Title",
      weight: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
