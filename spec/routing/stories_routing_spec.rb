require "rails_helper"

RSpec.describe StoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "locations/1/stories").to route_to("stories#index", location_id: "1")
    end

    it "routes to #new" do
      expect(get: "locations/1/stories/new").to route_to("stories#new", location_id: "1")
    end

    it "routes to #show" do
      expect(get: "locations/1/stories/1").to route_to("stories#show", id: "1", location_id: "1")
    end

    it "routes to #edit" do
      expect(get: "locations/1/stories/1/edit").to route_to("stories#edit", id: "1", location_id: "1")
    end


    it "routes to #create" do
      expect(post: "locations/1/stories").to route_to("stories#create", location_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "locations/1/stories/1").to route_to("stories#update", id: "1", location_id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "locations/1/stories/1").to route_to("stories#update", id: "1", location_id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "locations/1/stories/1").to route_to("stories#destroy", id: "1", location_id: "1")
    end
  end
end
