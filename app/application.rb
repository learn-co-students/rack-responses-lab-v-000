class Application

  def call(env)
    response = Rack::Response.new
    time = Time.now

    ( time.hour < 12 ) ? response.write("Good Morning!") : response.write("Good Afternoon!")
    
    response.finish
  end

end