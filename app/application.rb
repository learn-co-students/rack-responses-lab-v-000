

class  Application

	def call(env)
		resp = Rack::Response.new

    current_time = []
    current_time << Time.now.to_s
    current_time = current_time[0].split(" ")[1]
    current_time = current_time.split(":")[0].to_i

  	if(current_time < 12)
  	   resp.write "Good Morning!"
  	else
  		resp.write "Good Afternoon!"
  	end

		resp.finish
  end


end
