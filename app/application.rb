class Application

  def call(env)
    resp = Rack::Response.new

    if Time.new.hour < 12
      resp.write "Good Morning! #{Time.new.hour}"
    else
      resp.write "Good Afternoon! #{Time.new.hour}"
    end

    resp.finish
  end

end
