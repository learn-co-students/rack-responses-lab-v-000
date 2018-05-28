require 'pry'
class Application

  def call(env)
  #  binding.pry
    resp = Rack::Response.new

    time = Time.now
    time = time.strftime("%p")

    if time == "PM"
    resp.write "Good Afternoon!"
  elsif time == "AM"
    resp.write "Good Morning!"
  end
    resp.finish
  end

end
