# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'indicator_medals/edit', type: :view do
  before do
    @indicator_medal = assign(:indicator_medal, IndicatorMedal.create!(
                                                  age_group: nil,
                                                  indicator: nil,
                                                  min_value: 1.5,
                                                  max_value: 1.5,
                                                  medal: nil
                                                ))
  end

  it 'renders the edit indicator_medal form' do
    render

    assert_select 'form[action=?][method=?]', indicator_medal_path(@indicator_medal), 'post' do
      assert_select 'input[name=?]', 'indicator_medal[age_group_id]'

      assert_select 'input[name=?]', 'indicator_medal[indicator_id]'

      assert_select 'input[name=?]', 'indicator_medal[min_value]'

      assert_select 'input[name=?]', 'indicator_medal[max_value]'

      assert_select 'input[name=?]', 'indicator_medal[medal_id]'
    end
  end
end
