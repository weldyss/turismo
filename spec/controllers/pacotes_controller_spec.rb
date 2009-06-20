require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PacotesController do

  def mock_pacote(stubs={})
    @mock_pacote ||= mock_model(Pacote, stubs)
  end
  
  describe "GET index" do
    it "assigns all pacotes as @pacotes" do
      Pacote.stub!(:find).with(:all).and_return([mock_pacote])
      get :index
      assigns[:pacotes].should == [mock_pacote]
    end
  end

  describe "GET show" do
    it "assigns the requested pacote as @pacote" do
      Pacote.stub!(:find).with("37").and_return(mock_pacote)
      get :show, :id => "37"
      assigns[:pacote].should equal(mock_pacote)
    end
  end

  describe "GET new" do
    it "assigns a new pacote as @pacote" do
      Pacote.stub!(:new).and_return(mock_pacote)
      get :new
      assigns[:pacote].should equal(mock_pacote)
    end
  end

  describe "GET edit" do
    it "assigns the requested pacote as @pacote" do
      Pacote.stub!(:find).with("37").and_return(mock_pacote)
      get :edit, :id => "37"
      assigns[:pacote].should equal(mock_pacote)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created pacote as @pacote" do
        Pacote.stub!(:new).with({'these' => 'params'}).and_return(mock_pacote(:save => true))
        post :create, :pacote => {:these => 'params'}
        assigns[:pacote].should equal(mock_pacote)
      end

      it "redirects to the created pacote" do
        Pacote.stub!(:new).and_return(mock_pacote(:save => true))
        post :create, :pacote => {}
        response.should redirect_to(pacote_url(mock_pacote))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved pacote as @pacote" do
        Pacote.stub!(:new).with({'these' => 'params'}).and_return(mock_pacote(:save => false))
        post :create, :pacote => {:these => 'params'}
        assigns[:pacote].should equal(mock_pacote)
      end

      it "re-renders the 'new' template" do
        Pacote.stub!(:new).and_return(mock_pacote(:save => false))
        post :create, :pacote => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested pacote" do
        Pacote.should_receive(:find).with("37").and_return(mock_pacote)
        mock_pacote.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pacote => {:these => 'params'}
      end

      it "assigns the requested pacote as @pacote" do
        Pacote.stub!(:find).and_return(mock_pacote(:update_attributes => true))
        put :update, :id => "1"
        assigns[:pacote].should equal(mock_pacote)
      end

      it "redirects to the pacote" do
        Pacote.stub!(:find).and_return(mock_pacote(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(pacote_url(mock_pacote))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested pacote" do
        Pacote.should_receive(:find).with("37").and_return(mock_pacote)
        mock_pacote.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pacote => {:these => 'params'}
      end

      it "assigns the pacote as @pacote" do
        Pacote.stub!(:find).and_return(mock_pacote(:update_attributes => false))
        put :update, :id => "1"
        assigns[:pacote].should equal(mock_pacote)
      end

      it "re-renders the 'edit' template" do
        Pacote.stub!(:find).and_return(mock_pacote(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested pacote" do
      Pacote.should_receive(:find).with("37").and_return(mock_pacote)
      mock_pacote.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the pacotes list" do
      Pacote.stub!(:find).and_return(mock_pacote(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(pacotes_url)
    end
  end

end
