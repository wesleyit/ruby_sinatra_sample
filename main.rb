# encoding: UTF-8
# vim: autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=ruby

require 'sinatra'

get '/' do
  @title = 'SecCI'
  @subtitle = 'Yo, man! We do tha motha fuckin\' security!'
  erb :index
end

post '/login' do
  @title = 'SecCI'
  @subtitle = 'It is so SecCI!!!'
  @login = @params['login']
  @password = @params['password']
  if @login == 'admin' && @password == 'teste123'
    @message = 'Success!'
    @image = 'success.jpg'
  else
    @message = 'Failure'
    @image = 'failure.jpg'
  end
  erb :auth
end
