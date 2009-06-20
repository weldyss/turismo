require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/cidades/show.html.erb" do
  include CidadesHelper
  before(:each) do
    assigns[:cidade] = @cidade = stub_model(Cidade,
      :nome => "value for nome",
      :pais => "value for pais"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nome/)
    response.should have_text(/value\ for\ pais/)
  end
end

