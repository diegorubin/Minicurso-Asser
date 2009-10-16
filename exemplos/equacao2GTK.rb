require "gtk2"
require "equacao2"

class EquacaoGtk < Gtk::Window
  def initialize(title)
    super

    #table
    tblEquacao = Gtk::Table.new(3,3,FALSE)
    add(tblEquacao)
    set_border_width(20)
    set_window_position(Gtk::Window::POS_CENTER_ALWAYS)

    #labels
    lblA = Gtk::Label.new("a")
    tblEquacao.attach_defaults(lblA,0,1,0,1)

    lblB = Gtk::Label.new("b")
    tblEquacao.attach_defaults(lblB,1,2,0,1)

    lblC = Gtk::Label.new("c")
    tblEquacao.attach_defaults(lblC,2,3,0,1)

    lblX1 = Gtk::Label.new
    tblEquacao.attach_defaults(lblX1,1,2,2,3)

    lblX2 = Gtk::Label.new
    tblEquacao.attach_defaults(lblX2,2,3,2,3)

    #entrys
    entA = Gtk::Entry.new
    tblEquacao.attach_defaults(entA,0,1,1,2)

    entB = Gtk::Entry.new
    tblEquacao.attach_defaults(entB,1,2,1,2)

    entC = Gtk::Entry.new
    tblEquacao.attach_defaults(entC,2,3,1,2)

    #botao
    btnResolver = Gtk::Button.new("Resolver")
    tblEquacao.attach_defaults(btnResolver,0,1,2,3)

    #signals
    btnResolver.signal_connect("clicked") do
      e = Equacao2.new(entA.text.to_f,entB.text.to_f,entC.text.to_f)
      r = e.resolver
      if not r
        lblX1.text = "Resultado não está no plano real."
        lblX2.text = ""
      else
        lblX1.text ="X1: " + r[0].to_s
        lblX2.text ="X2: " + r[1].to_s
      end
    end
    signal_connect("destroy") { Gtk.main_quit }

  end

end

#Inicia os variaveis do Gtk
Gtk.init

window = EquacaoGtk.new("Equação do Segundo Grau")
window.show_all

#Loop Principal
Gtk.main

