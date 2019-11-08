class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.hour < 12
      resp.write "Good Morning!"
    elsif Time.now.hour > 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
