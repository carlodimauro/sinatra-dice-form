require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/process_roll") do
  @dies = params.fetch("no_of_dice").to_i
  @sides = params.fetch("no_of_sides").to_i
  
  @rolls=[]

  @dies.times do |roll|
    @rolls.push(rand(1..@sides))
  end

  erb(:results)
end
