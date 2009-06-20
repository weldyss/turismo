require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cidade do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :pais => "value for pais"
    }
  end

  it "should create a new instance given valid attributes" do
    Cidade.create!(@valid_attributes)
  end
end
