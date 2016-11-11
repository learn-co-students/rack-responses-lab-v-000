class Application
  
  def call(env)
    response = Rack::Response.new
    
    current_time = Time.now
    local_time = current_time.localtime
    
    time_teller = "it is #{local_time.hour}:#{local_time.min}"
    
    if local_time.hour >= 12
      response.write "Good Afternoon, #{time_teller}!"
    else
      response.write "Good Morning, #{time_teller}!"
    end
    response.finish
  end

  
end