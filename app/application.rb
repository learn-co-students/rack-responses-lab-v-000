require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    some = Time.now
  #  binding.pry
    if some.hour <12
    resp.write "Good Morning!"
    else
    resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
