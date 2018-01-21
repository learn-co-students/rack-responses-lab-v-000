class Application

  def call(env)
    what_time = Rack::Response.new
    now = Time.now
    if now.hour >=12
      what_time.write "Good Afternoon"
    else
      what_time.write "Good Morning"
    end
    what_time.finish
  end

end
