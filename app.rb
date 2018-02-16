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
  word = params['word']
  definition = params['definition']
  entry = Word.new({:word=> word, :definition=> definition})
  entry.save()
  @word_list = Word.all()
  erb(:home)
end

get('/:word') do
  @entry = Word.new({:word=> params['word'], :definition=> params['definition']})
  erb(:definition)
end

post('/:word') do
  @entry = Word.new({:word=> params['word'], :definition=> params['definition']})
  erb(:definition)
end

# save method won't work for more variation. refactor for a save_item(item) method that will store one or the other in the master object/list?
