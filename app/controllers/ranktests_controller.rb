class RanktestsController < ApplicationController
  # GET /ranktests
  # GET /ranktests.xml
  def index
    #@ranktests = Test.all
    @ranktests = Ranktest.all(:order => 'date DESC')
    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ranktests }
    end
  end

  # GET /ranktests/1
  # GET /ranktests/1.xml
  def show
    @ranktest = Ranktest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ranktest }
    end
  end

  # GET /ranktests/new
  # GET /ranktests/new.xml
  def new
    @ranktest = Ranktest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ranktest }
    end
  end

  # GET /ranktests/1/edit
  def edit
    @ranktest = Ranktest.find(params[:id])
  end

  # POST /ranktests
  # POST /ranktests.xml
  def create
    @ranktest = Ranktest.new(params[:ranktest])

    respond_to do |format|
      if @ranktest.save
        format.html { redirect_to(@ranktest, :notice => 'Ranktest was successfully created.') }
        format.xml  { render :xml => @ranktest, :status => :created, :location => @ranktest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ranktest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ranktests/1
  # PUT /ranktests/1.xml
  def update
    @ranktest = Ranktest.find(params[:id])

    respond_to do |format|
      if @ranktest.update_attributes(params[:ranktest])
        format.html { redirect_to(@ranktest, :notice => 'Ranktest was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ranktest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ranktests/1
  # DELETE /ranktests/1.xml
  def destroy
    @ranktest = Test.find(params[:id])
    @ranktest.destroy

    respond_to do |format|
      format.html { redirect_to(ranktests_url) }
      format.xml  { head :ok }
    end
  end
end
