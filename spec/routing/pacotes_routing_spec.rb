require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PacotesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "pacotes", :action => "index").should == "/pacotes"
    end
  
    it "maps #new" do
      route_for(:controller => "pacotes", :action => "new").should == "/pacotes/new"
    end
  
    it "maps #show" do
      route_for(:controller => "pacotes", :action => "show", :id => "1").should == "/pacotes/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "pacotes", :action => "edit", :id => "1").should == "/pacotes/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "pacotes", :action => "create").should == {:path => "/pacotes", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "pacotes", :action => "update", :id => "1").should == {:path =>"/pacotes/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "pacotes", :action => "destroy", :id => "1").should == {:path =>"/pacotes/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/pacotes").should == {:controller => "pacotes", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/pacotes/new").should == {:controller => "pacotes", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/pacotes").should == {:controller => "pacotes", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/pacotes/1").should == {:controller => "pacotes", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/pacotes/1/edit").should == {:controller => "pacotes", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/pacotes/1").should == {:controller => "pacotes", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/pacotes/1").should == {:controller => "pacotes", :action => "destroy", :id => "1"}
    end
  end
end
