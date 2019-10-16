class Application
    
    def call(env)
        resp = Rack::Response.new
        
        if Time.now.hour < 12
            resp.write "Good Morning"
        elsif Time.now.hour >= 12
            resp.write "Good Afternoon"
        end# of if  
        resp.finish
    end# of call
end# of class 