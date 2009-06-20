class PacotesController < ApplicationController
  layout "layout"
  # GET /pacotes
  # GET /pacotes.xml
  def index
    @pacotes = Pacote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pacotes }
    end
  end

  # GET /pacotes/1
  # GET /pacotes/1.xml
  def show
    @pacote = Pacote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pacote }
    end
  end

  # GET /pacotes/new
  # GET /pacotes/new.xml
  def new
    @pacote = Pacote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pacote }
    end
  end

  # GET /pacotes/1/edit
  def edit
    @pacote = Pacote.find(params[:id])
  end

  # POST /pacotes
  # POST /pacotes.xml
  def create
    @pacote = Pacote.new(params[:pacote])

    respond_to do |format|
      if @pacote.save
        flash[:notice] = 'Pacote was successfully created.'
        format.html { redirect_to(@pacote) }
        format.xml  { render :xml => @pacote, :status => :created, :location => @pacote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pacote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pacotes/1
  # PUT /pacotes/1.xml
  def update
    @pacote = Pacote.find(params[:id])

    respond_to do |format|
      if @pacote.update_attributes(params[:pacote])
        flash[:notice] = 'Pacote was successfully updated.'
        format.html { redirect_to(@pacote) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pacote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pacotes/1
  # DELETE /pacotes/1.xml
  def destroy
    @pacote = Pacote.find(params[:id])
    @pacote.destroy

    respond_to do |format|
      format.html { redirect_to(pacotes_url) }
      format.xml  { head :ok }
    end
  end
end
