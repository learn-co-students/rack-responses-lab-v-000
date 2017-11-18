class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12
      resp.write "Good Morning! #{Time.now.hour}"
    else
      resp.write "Good Afternoon! #{Time.now.hour}"
    end

    resp.finish
  end

end
