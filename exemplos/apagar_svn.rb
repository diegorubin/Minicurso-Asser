# Metodo implementado de forma recursiva
# para deletar um diretorio
def rm_r(dir)
  Dir.entries(dir).each do |entrada|
    if (File.directory?("#{dir}/#{entrada}") and (entrada != "." and entrada != "..") )
      rm_r("#{dir}/#{entrada}")
      Dir.delete("#{dir}/#{entrada}")
    else
      File.delete("#{dir}/#{entrada}") if (entrada != "." and entrada != "..")
    end
  end
end
# Procura de forma recursiva diretorio ".svn"
def procurar(dir)
  Dir.entries(dir).each do |entrada|
    if (File.directory?(dir + "/" + entrada) and (entrada != "." and entrada != "..") and (entrada != ".svn"))
      procurar(dir + "/" + entrada)
    else
      if(entrada == ".svn")
        puts "Apagando: #{dir}/#{entrada}"
        rm_r("#{dir}/#{entrada}")
        Dir.delete("#{dir}/#{entrada}")
      end
    end
  end
end

procurar(".")

