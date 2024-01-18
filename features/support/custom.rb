require "dotenv"
Dotenv.load(".env.test.local", ".env.local", ".env.test", ".env")

module Testing
  class Guest
  end

  class User
  end

  class Context
    def set_user(new_user)
      @current_user = new_user
    end
  end
end

module History
  module WorldHelpers
    def context = @context ||= Testing::Context.new
  end
end

World(History::WorldHelpers)
