class Application

  def call(env)
    resp = Rack::Response.new

     t1 = Time.new(11:59)
     t2 = Time.new(12)

     if  
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish


  end




end
