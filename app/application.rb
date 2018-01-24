class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now.to_i
    # now = Time.now

    if now < 1448625600
    # if now.hour >= 12 --> converts to hour
    # resp.write "Good Afternoon!"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"

    end
    resp.finish
  end
end
