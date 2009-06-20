require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pacotes/index.html.erb" do
  include PacotesHelper
  
  before(:each) do
    assigns[:pacotes] = [
      stub_model(Pacote,
        :nome => "value for nome",
        :quantidade_de_pessoas => 1,
        :valor => 1.5,
        :transporte => "value for transporte"
      ),
      stub_model(Pacote,
        :nome => "value for nome",
        :quantidade_de_pessoas => 1,
        :valor => 1.5,
        :transporte => "value for transporte"
      )
    ]
  end

  it "renders a list of pacotes" do
    render
    response.should have_tag("tr>td", "value for nome".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", "value for transporte".to_s, 2)
  end
end

