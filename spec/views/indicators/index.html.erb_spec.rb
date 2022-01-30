# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicators/index', type: :view do
  before do
    assign(:indicators, [
             Indicator.create!(
               code: 'Code',
               name: 'Name',
               title: 'Title',
               unit: 'Unit'
             ),
             Indicator.create!(
               code: 'Code',
               name: 'Name',
               title: 'Title',
               unit: 'Unit'
             )
           ])
  end

  it 'renders a list of indicators' do
    render
    assert_select 'tr>td', text: 'Code'.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Unit'.to_s, count: 2
  end
end
