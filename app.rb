require './environment'

module FormsLab
  class App < Sinatra::Base
  get '/new' do
    erb :new
  end
 post '/pirates' do
   @pirate= Pirate.new(params[:pirate])
   @ships= params[:pirate][:ships]
   erb :show
 end
    # code other routes/actions here

  end
end
