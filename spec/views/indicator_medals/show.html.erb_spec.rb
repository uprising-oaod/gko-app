# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicator_medals/show', type: :view do
  before do
    @indicator_medal = assign(:indicator_medal, IndicatorMedal.create!(
                                                  age_group: nil,
                                                  indicator: nil,
                                                  min_value: 2.5,
                                                  max_value: 3.5,
                                                  medal: nil
                                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(//)
  end
end
