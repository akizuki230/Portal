class HomeController < ApplicationController
  def index
    @users = User.all
    @eventolast =Evento.last
    @articuloindex = Articulo.order("id DESC").limit(5)
  end

  def blog
    @articulo = Articulo.order( "id DESC")
  end
 
end
