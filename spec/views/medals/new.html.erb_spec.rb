# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'medals/new', type: :view do
  before do
    assign(:medal, Medal.new(
                     code: 'MyString',
                     name: 'MyString',
                     title: 'MyString',
                     weight: 1
                   ))
  end

  it 'renders new medal form' do
    render

    assert_select 'form[action=?][method=?]', medals_path, 'post' do
      assert_select 'input[name=?]', 'medal[code]'

      assert_select 'input[name=?]', 'medal[name]'

      assert_select 'input[name=?]', 'medal[title]'

      assert_select 'input[name=?]', 'medal[weight]'
    end
  end
end
