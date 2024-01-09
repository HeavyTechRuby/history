require "dotenv"
Dotenv.load(".env.test.local", ".env.local", ".env.test", ".env")

class Guest
end

class Context
  def set_user(new_user)
    @current_user = new_user
  end
end

module History
  module WorldHelpers
    def context = @context ||= Context.new
  end
end

World(History::WorldHelpers)
