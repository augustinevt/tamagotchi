require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/pet')

get('/') do
  erb(:index)
end

post('/new_pet') do
  @gif = "static"
  @name = params.fetch('name')
  Pet.new(@name)
  erb(:index)
end

post('/feed') do
  @gif = "food"
  @pet = Pet.pet()
  @food = @pet.feed()
  erb(:index)
end

post('/rest') do
  @gif = "rest"
  @pet = Pet.pet()
  @rest = @pet.go_to_bed()
  erb(:index)
end

post('/activity') do
  @gif = "activity"
  @pet = Pet.pet()
  @activity = @pet.play()
  erb(:index)
end
