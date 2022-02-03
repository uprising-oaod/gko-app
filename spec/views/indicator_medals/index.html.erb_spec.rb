# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicator_medals/index', type: :view do
  before do
    assign(:indicator_medals, [
             IndicatorMedal.create!(
               age_group: nil,
               indicator: nil,
               min_value: 2.5,
               max_value: 3.5,
               medal: nil
             ),
             IndicatorMedal.create!(
               age_group: nil,
               indicator: nil,
               min_value: 2.5,
               max_value: 3.5,
               medal: nil
             )
           ])
  end

  it 'renders a list of indicator_medals' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.5.to_s, count: 2
    assert_select 'tr>td', text: 3.5.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
