require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CidadesController do

  def mock_cidade(stubs={})
    @mock_cidade ||= mock_model(Cidade, stubs)
  end
  
  describe "GET index" do
    it "assigns all cidades as @cidades" do
      Cidade.stub!(:find).with(:all).and_return([mock_cidade])
      get :index
      assigns[:cidades].should == [mock_cidade]
    end
  end

  describe "GET show" do
    it "assigns the requested cidade as @cidade" do
      Cidade.stub!(:find).with("37").and_return(mock_cidade)
      get :show, :id => "37"
      assigns[:cidade].should equal(mock_cidade)
    end
  end

  describe "GET new" do
    it "assigns a new cidade as @cidade" do
      Cidade.stub!(:new).and_return(mock_cidade)
      get :new
      assigns[:cidade].should equal(mock_cidade)
    end
  end

  describe "GET edit" do
    it "assigns the requested cidade as @cidade" do
      Cidade.stub!(:find).with("37").and_return(mock_cidade)
      get :edit, :id => "37"
      assigns[:cidade].should equal(mock_cidade)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created cidade as @cidade" do
        Cidade.stub!(:new).with({'these' => 'params'}).and_return(mock_cidade(:save => true))
        post :create, :cidade => {:these => 'params'}
        assigns[:cidade].should equal(mock_cidade)
      end

      it "redirects to the created cidade" do
        Cidade.stub!(:new).and_return(mock_cidade(:save => true))
        post :create, :cidade => {}
        response.should redirect_to(cidade_url(mock_cidade))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved cidade as @cidade" do
        Cidade.stub!(:new).with({'these' => 'params'}).and_return(mock_cidade(:save => false))
        post :create, :cidade => {:these => 'params'}
        assigns[:cidade].should equal(mock_cidade)
      end

      it "re-renders the 'new' template" do
        Cidade.stub!(:new).and_return(mock_cidade(:save => false))
        post :create, :cidade => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested cidade" do
        Cidade.should_receive(:find).with("37").and_return(mock_cidade)
        mock_cidade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cidade => {:these => 'params'}
      end

      it "assigns the requested cidade as @cidade" do
        Cidade.stub!(:find).and_return(mock_cidade(:update_attributes => true))
        put :update, :id => "1"
        assigns[:cidade].should equal(mock_cidade)
      end

      it "redirects to the cidade" do
        Cidade.stub!(:find).and_return(mock_cidade(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(cidade_url(mock_cidade))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested cidade" do
        Cidade.should_receive(:find).with("37").and_return(mock_cidade)
        mock_cidade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cidade => {:these => 'params'}
      end

      it "assigns the cidade as @cidade" do
        Cidade.stub!(:find).and_return(mock_cidade(:update_attributes => false))
        put :update, :id => "1"
        assigns[:cidade].should equal(mock_cidade)
      end

      it "re-renders the 'edit' template" do
        Cidade.stub!(:find).and_return(mock_cidade(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested cidade" do
      Cidade.should_receive(:find).with("37").and_return(mock_cidade)
      mock_cidade.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the cidades list" do
      Cidade.stub!(:find).and_return(mock_cidade(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(cidades_url)
    end
  end

end
