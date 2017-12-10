class Application

  def call(env)
    resp = Rack::Response.new
  time = Time.now


    #  morning = Kernel <= "12:00\n" && Kernel > "23:59\n"
    #   num_2 = Kernel.rand(1..20)
    if time.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
