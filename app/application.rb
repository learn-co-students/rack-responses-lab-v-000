class Application
    def call(env)
        resp = Rack::Response.new
        before_noon = Time.now.hour < 12
        after_noon = Time.now.hour > 12
        if before_noon
            resp.write "Good Morning!"
        elsif after_noon
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end