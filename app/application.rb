class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now


    if time.strftime("%I:%M%p").include?("PM")
      resp.write "Good Afternoon\n"
    else   
      resp.write "Good Morning\n"
    end
    resp.finish  
  end  
end  