# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'medals/show', type: :view do
  before do
    @medal = assign(:medal, Medal.create!(
                              code: 'Code',
                              name: 'Name',
                              title: 'Title',
                              weight: 2
                            ))
  end

  # rubocop:disable RSpec/MultipleExpectations
  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
  # rubocop:enable RSpec/MultipleExpectations
end
