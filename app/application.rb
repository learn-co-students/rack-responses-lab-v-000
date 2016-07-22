class Application
  require 'time'

  def call(env)
    resp = Rack::Response.new

    t = Time.new(time_of_day)

    if t.now.hour > 1200
      resp.write "YGood Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
