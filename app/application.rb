require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now
    # binding.pry
    if time.hour >= 12
      # binding.pry
      resp.write "Afternoon"
    else
      resp.write "Morning"
      # binding.pry
    end

    resp.finish
  end
end
