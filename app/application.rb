class Application

	def call(env)
	    resp = Rack::Response.new
	    time = Time.now.hour
	    resp.write "The hour is now #{time}\n"


	    if time<12
	      resp.write "Good Morning!\n"
	    else
	      resp.write "Good Afternoon!\n"
	    end

	    resp.finish
	end


end
