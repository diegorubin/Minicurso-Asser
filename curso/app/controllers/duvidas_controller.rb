class DuvidasController < ApplicationController
  def enviar
    if(request.post?)
      form_duvida = params[:duvida]
      duvida = Duvida.new(form_duvida)
      duvida.exemplo_id = params[:id]
      if(duvida.save)
        render :action => "sucesso"
      end
    end
  end
  def sucesso
  end
end

