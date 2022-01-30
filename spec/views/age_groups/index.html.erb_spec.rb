# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'age_groups/index', type: :view do
  before do
    assign(:age_groups, [
             AgeGroup.create!(
               age: 2,
               gender: 'Gender',
               code: 'Code',
               name: 'Name',
               title: 'Title'
             ),
             AgeGroup.create!(
               age: 2,
               gender: 'Gender',
               code: 'Code',
               name: 'Name',
               title: 'Title'
             )
           ])
  end

  it 'renders a list of age_groups' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Gender'.to_s, count: 2
    assert_select 'tr>td', text: 'Code'.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
  end
end
