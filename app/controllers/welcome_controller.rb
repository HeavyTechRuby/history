class WelcomeController < ApplicationController
  def index
    @recent_stories = RecentStories.new
  end
end
