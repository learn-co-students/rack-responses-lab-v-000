class Application

  def call(env)
    resp = Rack::Response.new
    #get time here: time = TBD
    time = Time.new
    # resp.write "#{time}"
    if time.hour >= 12
      resp.write "Good afternoon"
    else
      resp.write
      "Good morning"
    end
    #Write good afternoon or good Morning
    # if time < resp.write
    resp.finish
  end
end
