require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    day_or_night = time.strftime("%p")

    if day_or_night == "AM"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
