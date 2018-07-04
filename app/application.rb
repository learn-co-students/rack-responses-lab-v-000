
class Application

  def call(env)
    resp = Rack::Response.new
 
    current_time = Time.new
    meridian = current_time.strftime('%p')
    
    if meridian.downcase == 'pm'
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end