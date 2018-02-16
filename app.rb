require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/definer')

get('/') do
  @word_list = Word.all()
  erb(:home)
end

post('/') do
  word = params["word"]
  entry = Word.new(word)
  entry.save()
  @word_list = Word.all()
  erb(:home)
end

get('/:word') do
  @word = Word.new(params["word"])
  erb(:definition)
end
