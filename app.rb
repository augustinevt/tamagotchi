require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/pet')

get('/') do
  erb(:index)
end

post('/new_pet') do
  @gif = true
  @name = params.fetch('name')
  Pet.new(@name)
  erb(:index)
end
