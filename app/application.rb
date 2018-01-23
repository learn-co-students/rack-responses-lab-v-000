require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    greet_user(resp)
    resp.finish
  end

  def current_time_in_hours
    t = Time.now
    t.hour
  end

  def greet_user(resp)
    if current_time_in_hours < 12
      resp.write "Good Morning"
    else
      resp.write "The current time is #{current_time_in_hours}"
      resp.write "Good Afternoon"
    end
  end

end
