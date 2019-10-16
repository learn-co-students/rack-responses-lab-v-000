class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.to_s
    new_time = time.split
    new_new_time = new_time[1].to_i
    if new_new_time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end