class Application
  attr_reader :current_time

  def initialize
    @current_time = Time.now
  end

  def call(env)
    resp = Rack::Response.new

    if current_time.hour >= 12
      msg = "Good Afternoon!"
    else
      msg = "Good Morning!"
    end

    resp.write "#{msg}"
    resp.finish
  end
end
