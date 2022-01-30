# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AgeGroupsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/age_groups').to route_to('age_groups#index')
    end

    it 'routes to #new' do
      expect(get: '/age_groups/new').to route_to('age_groups#new')
    end

    it 'routes to #show' do
      expect(get: '/age_groups/1').to route_to('age_groups#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/age_groups/1/edit').to route_to('age_groups#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/age_groups').to route_to('age_groups#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/age_groups/1').to route_to('age_groups#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/age_groups/1').to route_to('age_groups#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/age_groups/1').to route_to('age_groups#destroy', id: '1')
    end
  end
end
