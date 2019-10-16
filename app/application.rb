class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%H").to_i
    resp.write "Good #{ ((00...12).include? time) ? 'Morning' : 'Afternoon' }"

    resp.finish
  end
end
