# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'age_groups/edit', type: :view do
  before do
    @age_group = assign(:age_group, AgeGroup.create!(
                                      age: 1,
                                      gender: 'MyString',
                                      code: 'MyString',
                                      name: 'MyString',
                                      title: 'MyString'
                                    ))
  end

  it 'renders the edit age_group form' do
    render

    assert_select 'form[action=?][method=?]', age_group_path(@age_group), 'post' do
      assert_select 'input[name=?]', 'age_group[age]'

      assert_select 'input[name=?]', 'age_group[gender]'

      assert_select 'input[name=?]', 'age_group[code]'

      assert_select 'input[name=?]', 'age_group[name]'

      assert_select 'input[name=?]', 'age_group[title]'
    end
  end
end
