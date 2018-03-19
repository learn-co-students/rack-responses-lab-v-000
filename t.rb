require 'pry'
require 'date'

t = Time.new
binding.pry
if t.hour >= 23
  puts "WOO"
end
