require './environment'

module FormsLab
  class App < Sinatra::Base
  get '/new' do
    erb :new
  end
 post '/pirates' do
   @pirate= Pirate.new(params[:pirate])
   params[:pirate][:ships].each do |ship|
     Ship.new(ship)
   end
   @ships= Ship.all
   erb :show
 end
    # code other routes/actions here

  end
end
