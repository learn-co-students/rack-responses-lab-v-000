class Application

  def call(env)
    resp = Rack::Response.new
    # binding.pry
    x = Time.now()
    time= x.to_s.split[1]
    morning = time.split(":")[0]

    # binding.pry
    # num_2 = Kernel.rand(12..24)
    # num_3 = Kernel.rand(1..20)
    #
    # resp.write "#{num_1}\n"
    # resp.write "#{num_2}\n"
    # resp.write "#{num_3}\n"

    if morning.to_i <= 12
      resp.write "Good Morning"
    else
      resp.write "Afternoon"
    end


    resp.finish
  end

end
