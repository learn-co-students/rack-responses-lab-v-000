class Application

  def call(env)
      resp = Rack::Response.new
    time = Time.now
      if time.hour >= 12
        resp.write "Good Afternoon!\n"
        resp.write "The current time is: #{time}"
      else
        resp.write "Good Morning!\n"
        resp.write "The current time is: #{time}"
      end
      resp.finish
  end
end
