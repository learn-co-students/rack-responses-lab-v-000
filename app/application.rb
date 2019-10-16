class Application

  def call(env)
    resp = Rack::Response.new
    #get time here: time = TBD
    time = Time.now
    resp.write "#{time}"
    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    #Write good afternoon or good Morning
    # if time < resp.write
    resp.finish
  end
end
