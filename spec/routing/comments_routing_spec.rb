require "rails_helper"

RSpec.describe CommentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "stories/1/comments").to route_to("comments#index", story_id: "1")
    end

    it "routes to #new" do
      expect(get: "stories/1/comments/new").to route_to("comments#new", story_id: "1")
    end

    it "routes to #show" do
      expect(get: "stories/1/comments/1").to route_to("comments#show", story_id: "1", id: "1")
    end

    it "routes to #edit" do
      expect(get: "stories/1/comments/1/edit").to route_to("comments#edit", story_id: "1", id: "1")
    end

    it "routes to #create" do
      expect(post: "stories/1/comments").to route_to("comments#create", story_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "stories/1/comments/1").to route_to("comments#update", story_id: "1", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "stories/1/comments/1").to route_to("comments#update", story_id: "1", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "stories/1/comments/1").to route_to("comments#destroy", story_id: "1", id: "1")
    end
  end
end
