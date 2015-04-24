require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @word_count = params.fetch("master_word").word_count(params.fetch("master_sentence"))
  erb(:word_count)
end
