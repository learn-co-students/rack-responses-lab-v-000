class Application 

    def call(env)
        resp = Rack::Response.new
        hour = Time.now.hour
        greeting = hour < 12 ? "Good Morning!" : "Good Afternoon!"
        resp.write greeting
        resp.finish
    end
end