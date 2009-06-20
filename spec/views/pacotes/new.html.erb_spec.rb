require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pacotes/new.html.erb" do
  include PacotesHelper
  
  before(:each) do
    assigns[:pacote] = stub_model(Pacote,
      :new_record? => true,
      :nome => "value for nome",
      :quantidade_de_pessoas => 1,
      :valor => 1.5,
      :transporte => "value for transporte"
    )
  end

  it "renders new pacote form" do
    render
    
    response.should have_tag("form[action=?][method=post]", pacotes_path) do
      with_tag("input#pacote_nome[name=?]", "pacote[nome]")
      with_tag("input#pacote_quantidade_de_pessoas[name=?]", "pacote[quantidade_de_pessoas]")
      with_tag("input#pacote_valor[name=?]", "pacote[valor]")
      with_tag("input#pacote_transporte[name=?]", "pacote[transporte]")
    end
  end
end


