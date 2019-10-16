class Application

	def call(env)
	resp = Rack::Response.new

	time = Time.now.hour

	if time.to_i < 12
		resp.write "Good Morning!"
	elsif time.to_i > 12
		resp.write "Good Afternoon!"
		end
		
	resp.finish
	end
end