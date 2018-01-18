class Application 
    
    def call(env)
        resp = Rack::Response.new 
    
        my_time = Time.now
        if my_time.hour > 12
            resp.write 'Good Afternoon!'
        else
            resp.write 'Good Morning!' 
        end 
        resp.finish 
    end 
    
end 