class PgsController < ApplicationController

before_filter :authenticate
  # GET /pgs
  # GET /pgs.xml
  def index
    @pgs = Pg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pgs }
    end
  end

  # GET /pgs/1
  # GET /pgs/1.xml
  def show
    @pg = Pg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pg }
    end
  end

  # GET /pgs/new
  # GET /pgs/new.xml
  def new
    @pg = Pg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pg }
    end
  end

  # GET /pgs/1/edit
  def edit
    @pg = Pg.find(params[:id])
  end

  # POST /pgs
  # POST /pgs.xml
  def create
    @pg = Pg.new(params[:pg])

    respond_to do |format|
      if @pg.save
        format.html { redirect_to(@pg, :notice => 'Pg was successfully created.') }
        format.xml  { render :xml => @pg, :status => :created, :location => @pg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pgs/1
  # PUT /pgs/1.xml
  def update
    @pg = Pg.find(params[:id])

    respond_to do |format|
      if @pg.update_attributes(params[:pg])
        format.html { redirect_to(@pg, :notice => 'Pg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pgs/1
  # DELETE /pgs/1.xml
  def destroy
    @pg = Pg.find(params[:id])
    @pg.destroy

    respond_to do |format|
      format.html { redirect_to(pgs_url) }
      format.xml  { head :ok }
    end
  end
end
