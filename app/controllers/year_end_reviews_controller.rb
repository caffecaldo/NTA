class YearEndReviewsController < ApplicationController
  # GET /year_end_reviews
  # GET /year_end_reviews.xml
  def index
    @year_end_reviews = YearEndReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @year_end_reviews }
    end
  end

  # GET /year_end_reviews/1
  # GET /year_end_reviews/1.xml
  def show
    @year_end_review = YearEndReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year_end_review }
    end
  end

  # GET /year_end_reviews/new
  # GET /year_end_reviews/new.xml
  def new
    @year_end_review = YearEndReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @year_end_review }
    end
  end

  # GET /year_end_reviews/1/edit
  def edit
    @year_end_review = YearEndReview.find(params[:id])
  end

  # POST /year_end_reviews
  # POST /year_end_reviews.xml
  def create
    @year_end_review = YearEndReview.new(params[:year_end_review])

    respond_to do |format|
      if @year_end_review.save
        format.html { redirect_to(@year_end_review, :notice => 'Year end review was successfully created.') }
        format.xml  { render :xml => @year_end_review, :status => :created, :location => @year_end_review }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @year_end_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /year_end_reviews/1
  # PUT /year_end_reviews/1.xml
  def update
    @year_end_review = YearEndReview.find(params[:id])

    respond_to do |format|
      if @year_end_review.update_attributes(params[:year_end_review])
        format.html { redirect_to(@year_end_review, :notice => 'Year end review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @year_end_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /year_end_reviews/1
  # DELETE /year_end_reviews/1.xml
  def destroy
    @year_end_review = YearEndReview.find(params[:id])
    @year_end_review.destroy

    respond_to do |format|
      format.html { redirect_to(year_end_reviews_url) }
      format.xml  { head :ok }
    end
  end
end
