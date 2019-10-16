class Application

  def call(env)
    resp = Rack::Response.new

    response = Time.now
    if response.hour >=12
      resp.write "Good Afternoon!\n"
    else
      resp.write "Good Morning!\n"
    end
    resp.finish
  end

end
