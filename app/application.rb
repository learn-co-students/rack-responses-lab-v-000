require "pry"
class Application

  def call(env)
    response = Rack::Response.new

    hour = Time.now.hour
    if hour > 12
      response.write "Good Afternoon!"
    else
      response.write "Good Morning!"
    end

    response.finish
  end

end
