require "rails_helper"

RSpec.describe MedalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/medals").to route_to("medals#index")
    end

    it "routes to #new" do
      expect(get: "/medals/new").to route_to("medals#new")
    end

    it "routes to #show" do
      expect(get: "/medals/1").to route_to("medals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/medals/1/edit").to route_to("medals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/medals").to route_to("medals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/medals/1").to route_to("medals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/medals/1").to route_to("medals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/medals/1").to route_to("medals#destroy", id: "1")
    end
  end
end
