class Application

def call(env)
    resp = Rack::Response.new
    
    if afternoon? 
    resp.write "Good Afternoon!"
    else
    resp.write "Good Morning!"
    end
    
    resp.finish
end



def afternoon?
    Time.now.hour >= 12
end



end
