require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get('/') do
  @header = 'Make a Palindrome'
  erb(:form)
end

get('/output') do
  @header = 'Here\'s Your Palindrome'
  @palindrome = params.fetch('sentence').palindrome()
  erb(:output)
end