class Application

  def call(env)
    resp = Rack::Response.new
    if morning?
      resp.write "Good Morning."
    else
      resp.write "Good Afternoon."
    end
    resp.finish
  end

  def morning?
    Time.now.hour < 13
  end

end
