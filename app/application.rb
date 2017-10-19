class Application

  def call(env)
  resp = Rack::Response.new

  t = Time.now
    if t.hour.between?(0, 12)
      resp.write "Good Morning!"
    else t.hour.between?(12, 24)
      resp.write "Good Afternoon!"
    end
  resp.finish
  end
end
