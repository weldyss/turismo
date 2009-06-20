require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CidadesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "cidades", :action => "index").should == "/cidades"
    end
  
    it "maps #new" do
      route_for(:controller => "cidades", :action => "new").should == "/cidades/new"
    end
  
    it "maps #show" do
      route_for(:controller => "cidades", :action => "show", :id => "1").should == "/cidades/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "cidades", :action => "edit", :id => "1").should == "/cidades/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "cidades", :action => "create").should == {:path => "/cidades", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "cidades", :action => "update", :id => "1").should == {:path =>"/cidades/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "cidades", :action => "destroy", :id => "1").should == {:path =>"/cidades/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/cidades").should == {:controller => "cidades", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/cidades/new").should == {:controller => "cidades", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/cidades").should == {:controller => "cidades", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/cidades/1").should == {:controller => "cidades", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/cidades/1/edit").should == {:controller => "cidades", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/cidades/1").should == {:controller => "cidades", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/cidades/1").should == {:controller => "cidades", :action => "destroy", :id => "1"}
    end
  end
end
