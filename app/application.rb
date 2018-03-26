class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12
      resp.write "Morning!"
    elsif Time.now.hour >= 12 && Time.now.hour <= 17
      resp.write "Afternoon!"
    else
      resp.write "Evening!"

    end
    resp.finish
  end
end
