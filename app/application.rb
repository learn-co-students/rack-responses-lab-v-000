class Application
  def call(env)
    resp = Rack::Response.new
    resp.write greeting + " The time is #{Time.now.strftime('%I:%M%p')}"
    resp.finish
  end

  def greeting
    t = Time.now
    if t.hour < 12
      "Good Morning!"
    elsif t.hour > 12 && t.hour < 18
      "Good Afternoon!"
    else
      "Good Evening!"
    end
  end
end
