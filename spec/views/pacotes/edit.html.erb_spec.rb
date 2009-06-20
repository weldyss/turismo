require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pacotes/edit.html.erb" do
  include PacotesHelper
  
  before(:each) do
    assigns[:pacote] = @pacote = stub_model(Pacote,
      :new_record? => false,
      :nome => "value for nome",
      :quantidade_de_pessoas => 1,
      :valor => 1.5,
      :transporte => "value for transporte"
    )
  end

  it "renders the edit pacote form" do
    render
    
    response.should have_tag("form[action=#{pacote_path(@pacote)}][method=post]") do
      with_tag('input#pacote_nome[name=?]', "pacote[nome]")
      with_tag('input#pacote_quantidade_de_pessoas[name=?]', "pacote[quantidade_de_pessoas]")
      with_tag('input#pacote_valor[name=?]', "pacote[valor]")
      with_tag('input#pacote_transporte[name=?]', "pacote[transporte]")
    end
  end
end


