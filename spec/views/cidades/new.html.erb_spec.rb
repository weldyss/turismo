require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/cidades/new.html.erb" do
  include CidadesHelper
  
  before(:each) do
    assigns[:cidade] = stub_model(Cidade,
      :new_record? => true,
      :nome => "value for nome",
      :pais => "value for pais"
    )
  end

  it "renders new cidade form" do
    render
    
    response.should have_tag("form[action=?][method=post]", cidades_path) do
      with_tag("input#cidade_nome[name=?]", "cidade[nome]")
      with_tag("input#cidade_pais[name=?]", "cidade[pais]")
    end
  end
end


