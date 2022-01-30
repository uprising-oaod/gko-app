# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicators/show', type: :view do
  before do
    @indicator = assign(:indicator, Indicator.create!(
                                      code: 'Code',
                                      name: 'Name',
                                      title: 'Title',
                                      unit: 'Unit'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Unit/)
  end
end
