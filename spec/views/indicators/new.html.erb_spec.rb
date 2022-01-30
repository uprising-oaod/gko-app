# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicators/new', type: :view do
  before do
    assign(:indicator, Indicator.new(
                         code: 'MyString',
                         name: 'MyString',
                         title: 'MyString',
                         unit: 'MyString'
                       ))
  end

  it 'renders new indicator form' do
    render

    assert_select 'form[action=?][method=?]', indicators_path, 'post' do
      assert_select 'input[name=?]', 'indicator[code]'

      assert_select 'input[name=?]', 'indicator[name]'

      assert_select 'input[name=?]', 'indicator[title]'

      assert_select 'input[name=?]', 'indicator[unit]'
    end
  end
end
