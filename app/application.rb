class Application
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour < 12
      resp.write "Good Morning! The time is now #{DateTime.now.strftime("%I:%M%p")}."
    else
      resp.write "Good Afternoon! The time is now #{DateTime.now.strftime("%I:%M%p")}."
    end
    resp.finish
  end
end
