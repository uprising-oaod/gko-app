require 'rails_helper'

RSpec.describe "medals/edit", type: :view do
  before(:each) do
    @medal = assign(:medal, Medal.create!(
      code: "MyString",
      name: "MyString",
      title: "MyString",
      weight: 1
    ))
  end

  it "renders the edit medal form" do
    render

    assert_select "form[action=?][method=?]", medal_path(@medal), "post" do

      assert_select "input[name=?]", "medal[code]"

      assert_select "input[name=?]", "medal[name]"

      assert_select "input[name=?]", "medal[title]"

      assert_select "input[name=?]", "medal[weight]"
    end
  end
end
