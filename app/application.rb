class Application
    def call(env)
        resp = Rack::Response.new
        t = Time.now

        if t.hour < 12 
            resp.write "Good Morning!\n"  
        else
            resp.write "Good Afternoon!\n"
        end
        resp.finish
    end
end
