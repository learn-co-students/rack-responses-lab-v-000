require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    noon = Time.new(2010,01,01, 12,0,0)
  #  binding.pry
    if noon.hour < Time.now.hour
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end


end
