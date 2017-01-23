class Application

  def call(env)
    resp = Rack::Response.new  ## Creates new Rack::Response object

    current_time = Time.now  ## Get current_time

    if current_time.hour >= 12 
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish 
  end

end