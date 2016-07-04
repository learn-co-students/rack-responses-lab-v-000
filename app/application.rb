
class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.new
    timing = resp.write current_time.hour < 12 ? "Good Morning!" : "Good Afternoon!"
    binding.pry

    resp.finish
  end

end
