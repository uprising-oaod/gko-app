# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'age_groups/show', type: :view do
  before do
    @age_group = assign(:age_group, AgeGroup.create!(
                                      age: 2,
                                      gender: 'Gender',
                                      code: 'Code',
                                      name: 'Name',
                                      title: 'Title'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
  end
end
