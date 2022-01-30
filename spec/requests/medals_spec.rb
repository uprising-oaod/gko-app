# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/medals', type: :request do
  # Medal. As you add validations to Medal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Medal.create! valid_attributes
      get medals_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      medal = Medal.create! valid_attributes
      get medal_url(medal)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_medal_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      medal = Medal.create! valid_attributes
      get edit_medal_url(medal)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Medal' do
        expect do
          post medals_url, params: { medal: valid_attributes }
        end.to change(Medal, :count).by(1)
      end

      it 'redirects to the created medal' do
        post medals_url, params: { medal: valid_attributes }
        expect(response).to redirect_to(medal_url(Medal.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Medal' do
        expect do
          post medals_url, params: { medal: invalid_attributes }
        end.to change(Medal, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post medals_url, params: { medal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested medal' do
        medal = Medal.create! valid_attributes
        patch medal_url(medal), params: { medal: new_attributes }
        medal.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the medal' do
        medal = Medal.create! valid_attributes
        patch medal_url(medal), params: { medal: new_attributes }
        medal.reload
        expect(response).to redirect_to(medal_url(medal))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        medal = Medal.create! valid_attributes
        patch medal_url(medal), params: { medal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested medal' do
      medal = Medal.create! valid_attributes
      expect do
        delete medal_url(medal)
      end.to change(Medal, :count).by(-1)
    end

    it 'redirects to the medals list' do
      medal = Medal.create! valid_attributes
      delete medal_url(medal)
      expect(response).to redirect_to(medals_url)
    end
  end
end
