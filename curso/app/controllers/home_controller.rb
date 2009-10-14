class HomeController < ApplicationController
  def index
    @exemplos = Exemplo.all
  end

end

