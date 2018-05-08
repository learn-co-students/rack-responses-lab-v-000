
class Application

	def call(env)
		resp = Rack::Response.new
		time = Time.now.strftime("%H").to_i
		if time > 11
		resp.write "Good Afternoon!"
		else
		resp.write "Good Morning!"
		end
		resp.finish


	end




end
