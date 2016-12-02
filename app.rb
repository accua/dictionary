require('sinatra')
require('sinatra/reloader')
require('pry')
require('capybara')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get ('/') do
  @words = Word.all()
  erb(:index)
end

post ('/') do
  word = params.fetch("inputted_word")
  Word.new(:word => word).save()
  @words = Word.all()
  erb(:index)
end

get ('/words/:id') do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word)
end

post ('/word') do
  @word = Word.find(params.fetch("word_id").to_i())
  new_definition = params.fetch("definition")
  @definition = Definition.new(:definition => new_definition)
  @word.add_definition(@definition)
  @definition.save()
  erb(:word)
end
