class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.to_s.scan(/ \d{2}:/).last.gsub(/\s|:/,'').to_i

    if time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    
    resp.finish
  end
end