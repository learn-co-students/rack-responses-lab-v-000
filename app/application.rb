class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    t = time.strftime("%k:%M")

  if t.to_i.between?(00, 12)
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end

    resp.finish
  end
end
