# encoding: UTF-8
# vim: autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=ruby

require 'sinatra'
set :bind, '0.0.0.0'

get '/' do
  @title = 'SecCI'
  @subtitle = 'Yo, man! We do tha mutha fuckin\' security!'
  erb :index
end

post '/login' do
  @title = 'SecCI'
  @login = @params['login']
  @password = @params['password']
  if @login == 'admin' && @password == 'teste123'
    @subtitle = 'Wow, you are so SecCI!!!'
    @message = 'Success!'
    @image = 'success.jpg'
  else
    @subtitle = 'Get you fuckin ass outta here!!!'
    @message = 'Failure!'
    @image = 'failure.jpg'
  end
  erb :auth
end
