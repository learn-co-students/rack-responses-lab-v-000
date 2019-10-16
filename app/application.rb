class Application
  def call(env)
    response = Rack::Response.new
    time = Time.now
    
    if time.hour < 12
      response.write "Good Morning, Mr. Bond."
    else
      response.write "Good Afternoon, Mr. Bond."
    end
    
    response.finish
  end
end