class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.min < 10
      time_now = "#{t.hour}:0#{t.min}"
    else
      time_now = "#{t.hour}:#{t.min}"
    end

    t_statement = "The time is now #{time_now}"

    if t.hour < 12
      resp.write "Good Morning! #{t_statement}"
    else
      resp.write "Good Afternoon! #{t_statement}"
    end

    resp.finish
  end

end
