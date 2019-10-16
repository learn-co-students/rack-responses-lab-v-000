class Application

  def call(env)
    resp = Rack::Response.new
      time=Time.now
      if time.to_s.split(" ")[1].split(":")[0].to_i < 12
        resp.write "Good morning! It is now #{time.to_s.split(" ")[1]} in London. A beautiful Morning"
      elsif time.to_s.split(" ")[1].split(":")[0].to_i > 11
        resp.write "Good afternoon! It is now #{time.to_s.split(" ")[1]} in London. A beautiful Afternoon"
      end

    resp.finish
  end

end
