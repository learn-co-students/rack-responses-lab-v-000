class Application

  def call(env)
    resp = Rack::Response.new

    ahora = Time.now.hour

    if ahora < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon"
    end
    resp.finish
  end

end
