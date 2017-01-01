class Application

  def call(env)    
    resp = Rack::Response.new
    time = Time.now
    # new_time = Time.new(2015,11,27,9,30)

    if time.hour >= 12
    	resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
    end

    resp.finish  
	end

end