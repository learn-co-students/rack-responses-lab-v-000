class Application

  def call(env)
    resp = Rack::Response.new
    resp.write self.greeting
    resp.finish
  end

  def greeting
    Time.now.hour < 12 ? "Good Morning!" : " GoodAfternoon!"
  end

end
