class RecentStories
  include Enumerable

  def each(&)
    Story.order("created_at DESC").limit(10).find_each(&)
  end

  def size
    entries.size
  end
end
