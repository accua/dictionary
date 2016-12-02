require('sinatra')
require('sinatra/reloader')
require('pry')
require('capybara')
require('./lib/word')
require('.lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  word = params.fetch("inputted_word")
  Word.new(:word => word)
  erb(:index)
end
