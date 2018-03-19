class Application
    
    def call(env)
        resp = Rack::Response.new 
    
        if Time.now.hour < 12
            resp.write "Good Morning!"
        else Time.now.hour > 12
            resp.write "Good Afternoon!"
        end 
        resp.finish
    end 

end 