# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicators/edit', type: :view do
  before do
    @indicator = assign(:indicator, Indicator.create!(
                                      code: 'MyString',
                                      name: 'MyString',
                                      title: 'MyString',
                                      unit: 'MyString'
                                    ))
  end

  it 'renders the edit indicator form' do
    render

    assert_select 'form[action=?][method=?]', indicator_path(@indicator), 'post' do
      assert_select 'input[name=?]', 'indicator[code]'

      assert_select 'input[name=?]', 'indicator[name]'

      assert_select 'input[name=?]', 'indicator[title]'

      assert_select 'input[name=?]', 'indicator[unit]'
    end
  end
end
