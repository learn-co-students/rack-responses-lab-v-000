require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new
    
    if Time.now.localtime.hour < 12
      resp.write "Morning"
      resp.write "\nIt is now the hour of #{Time.now.getlocal.hour}"
    else
      resp.write "Afternoon"
      resp.write "\nIt is now the hour of #{Time.now.getlocal.hour}"
    end

    resp.finish
  end
end
