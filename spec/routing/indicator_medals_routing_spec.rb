# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IndicatorMedalsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/indicator_medals').to route_to('indicator_medals#index')
    end

    it 'routes to #new' do
      expect(get: '/indicator_medals/new').to route_to('indicator_medals#new')
    end

    it 'routes to #show' do
      expect(get: '/indicator_medals/1').to route_to('indicator_medals#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/indicator_medals/1/edit').to route_to('indicator_medals#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/indicator_medals').to route_to('indicator_medals#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/indicator_medals/1').to route_to('indicator_medals#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/indicator_medals/1').to route_to('indicator_medals#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/indicator_medals/1').to route_to('indicator_medals#destroy', id: '1')
    end
  end
end
