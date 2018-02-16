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
  entry = Word.new({:word=> word, :definition=> ''})
  entry.save()
  @word_list = Word.all()
  erb(:home)
end

get('/:word') do
  @entry = Word.new({:word=> params["word"], :definition=> ''})
  erb(:definition)
end

post('/:word') do
  @entry = Word.new({:word=> params["word"], :definition=> params["definition"]})
  erb(:definition)
end
