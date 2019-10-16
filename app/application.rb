# 1. If it's before noon, greet the user with "Good Morning!"
# 2. If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now

    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end