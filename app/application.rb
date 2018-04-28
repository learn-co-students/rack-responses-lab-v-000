require "pry"

class Application
    def call(env)
        resp = Rack::Response.new
         time = Time.new

         if time.hour.between?(0,12)
            resp.write "Morning or Afternoon"
        elsif time.hour.between?(12,24)
            resp.write "Afternoon"
         end
         resp.finish
    end
end


# 1. If it's before noon, greet the user with "Good Morning!"
# 2. If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
