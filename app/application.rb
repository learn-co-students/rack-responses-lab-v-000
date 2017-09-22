class Application

  def call(env)
    resp = Rack::Response.new

    hour = DateTime.now.hour
    if hour >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end


end
