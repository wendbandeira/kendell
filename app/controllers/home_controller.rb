class HomeController < ApplicationController

  def index
  	@clientes = Cliente.all :order => 'id desc'
  end

end

