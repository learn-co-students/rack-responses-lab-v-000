require 'pry'

desc 'it drops into console'
task :console do 
  Pry.start
end