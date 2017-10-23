require 'date'

class Application
  def call(env)
    resp = Rack::Response.new

    hourNow = Time.now.hour

    if hourNow < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
