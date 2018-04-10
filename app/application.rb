class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
      resp.write "#{time.strftime("%I:%M%p")}""\n"

    if time.hour >=12

      resp.write "\n""Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end
