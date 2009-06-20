require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Pacote do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :quantidade_de_pessoas => 1,
      :valor => 1.5,
      :transporte => "value for transporte"
    }
  end

  it "should create a new instance given valid attributes" do
    Pacote.create!(@valid_attributes)
  end
end
