class Application

	def call(env)
		res = Rack::Response.new
		res.write Time.now.hour < 12 ? "Good Morning" : "Good Afternoon"
		res.finish
	end

end