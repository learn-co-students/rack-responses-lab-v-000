require "pry"
class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.to_s.split[1].to_i <= 12
      resp.write "Good Morning"
    elsif Time.now.to_s.split[1].to_i > 12
      resp.write "Good Afternoon"
    end

    #binding.pry

    resp.finish
  end

end
