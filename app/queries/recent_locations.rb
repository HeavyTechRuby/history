class RecentLocations
  include Enumerable

  def each(&)
    Location.order("created_at DESC").limit(10).find_each(&)
  end

  def size
    entries.size
  end
end
