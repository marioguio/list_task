require 'sinatra'
require 'make_todo'

get '/' do
   @tareas = Tarea.all
   @conteo = 0
   @co = 0

   erb :index
end
post '/nuevo' do
  Tarea.create(params[:crear])
  redirect '/'
end

delete '/borrar/:id' do
  Tarea.destroy(params[:id])
  redirect '/'
end

put '/terminar/:id' do
  Tarea.update(params[:id])
  redirect '/'
end
