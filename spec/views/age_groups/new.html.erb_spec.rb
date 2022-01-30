# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'age_groups/new', type: :view do
  before do
    assign(:age_group, AgeGroup.new(
                         age: 1,
                         gender: 'MyString',
                         code: 'MyString',
                         name: 'MyString',
                         title: 'MyString'
                       ))
  end

  it 'renders new age_group form' do
    render

    assert_select 'form[action=?][method=?]', age_groups_path, 'post' do
      assert_select 'input[name=?]', 'age_group[age]'

      assert_select 'input[name=?]', 'age_group[gender]'

      assert_select 'input[name=?]', 'age_group[code]'

      assert_select 'input[name=?]', 'age_group[name]'

      assert_select 'input[name=?]', 'age_group[title]'
    end
  end
end
