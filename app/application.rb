class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.new
    hour = current_time.hour
    
    resp.write "#{hour}"
    
    if hour > 12 
      resp.write "Good Afternoon Morning!"
    else 
      resp.write "Good Morning!"
    end
    resp.finish
  end

end

