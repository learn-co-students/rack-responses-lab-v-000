class Application

  def call(env) #issues with test and UTC, beyond irritating
    resp = Rack::Response.new
    time = Time.now
      if time.hour > 12
        resp.write "Good Afternoon!"
      elsif time.hour >= 0 && time.hour < 12
        resp.write "Good Morning!"

      end
    resp.finish
  end

end
