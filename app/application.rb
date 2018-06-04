class Application
	def call(env)
		resp = Rack::Response.new
		
		if Time.now.hour < 11
			resp.write "Good Morning\n"
		else
			resp.write "Good Afternoon\n"

		end
		resp.finish
	end
end
