require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pacotes/show.html.erb" do
  include PacotesHelper
  before(:each) do
    assigns[:pacote] = @pacote = stub_model(Pacote,
      :nome => "value for nome",
      :quantidade_de_pessoas => 1,
      :valor => 1.5,
      :transporte => "value for transporte"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nome/)
    response.should have_text(/1/)
    response.should have_text(/1\.5/)
    response.should have_text(/value\ for\ transporte/)
  end
end

