class Application
    def call(env)
        resp = Rack::Response.new
        
        time = Time.now
        time.hour >=12 ? (resp.write "Good Afternoon") : (resp.write "Good Morning")
        
        resp.finish
    end
    
end