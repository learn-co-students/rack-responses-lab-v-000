class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    now = t.to_a

    resp.write "#{t}\n\n"

    if now[2] <= 11
      resp.write "Good Morning!"
    elsif
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
