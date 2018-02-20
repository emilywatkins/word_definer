require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @word_list = Word.all()
  erb(:home)
end

post('/') do
  word = params['word']
  entry = Word.new({:word=> word})
  Word.save(entry)
  @word_list = Word.all()
  erb(:home)
end

get('/:word') do
  @entry = Word.new({:word=> params['word']})
  @word_list = Word.all()
  erb(:definition)
end

post('/:word') do
  word = params['word']
  @entry = Word.new({:word=> params['word']})
  @entry.add_definition(params['definition'])
  Word.save(@entry)
  Word.find(params['word'])
  @word_list = Word.all()
  erb(:definition)
end
