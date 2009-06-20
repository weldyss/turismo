require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/cidades/edit.html.erb" do
  include CidadesHelper
  
  before(:each) do
    assigns[:cidade] = @cidade = stub_model(Cidade,
      :new_record? => false,
      :nome => "value for nome",
      :pais => "value for pais"
    )
  end

  it "renders the edit cidade form" do
    render
    
    response.should have_tag("form[action=#{cidade_path(@cidade)}][method=post]") do
      with_tag('input#cidade_nome[name=?]', "cidade[nome]")
      with_tag('input#cidade_pais[name=?]', "cidade[pais]")
    end
  end
end


