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
  entry = Word.new({:word=> word})
  entry.save()
  @word_list = Word.all()
  erb(:home)
end

get('/:word') do
  @entry = Word.new({:word=> params['word']})
  erb(:definition)
end

post('/:word') do
  entry = Word.new({:word=> params['word']})
  entry.add_definition(params['definition'])
  entry.save()
  @word_list = Word.all()
  binding.pry
  erb(:definition)
end

# save method won't work for more variation. refactor for a save_item(item) method that will store one or the other in the master object/list?
