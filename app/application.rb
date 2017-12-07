class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.hour<12
      resp.write "Good morning! Time now: #{Time.now.inspect}"
    else
      resp.write "Good afternoon! Time now: #{Time.now.inspect}"
    end
    resp.finish
  end

end
