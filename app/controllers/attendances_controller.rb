class AttendancesController < ApplicationController

  before_filter :get_set_yearmonth

  def get_set_yearmonth
    # yearmonth format is yyyy-mm, eg, 2012-06
    yearmonth = params[:yearmonth]
    if yearmonth.nil?
      if session[:yearmonth].nil?
        session[:yearmonth] = Date.today.strftime("%Y-%m")
      end
    else
      session[:yearmonth] = yearmonth
    end
  end

  #respond_to :html, :json


  def set_class_hours
    student_id = params[:student_id]
    class_date = params[:class_date]
    new_class_hours = (params["fixnum"] || {})["to_i"]

    @attendance.set_class_hours(new_class_hours, { :student_id => student_id, :class_date => class_date })

    if @attendance.save
      head :ok
    else
      render :json => @attendance.errors.full_messages, :status => :unprocessable_entity
    end
  end


  # GET /attendances
  # GET /attendances.xml
  def index
    @attendances = Attendance.all
    @students    = Student.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendances }
    end
  end

#  def index
#    @students = Student.all
#  end

  # GET /attendances/1
  # GET /attendances/1.xml
  def show
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendance }
    end
  end

  # GET /attendances/new
  # GET /attendances/new.xml
  def new
    #@attendance = Attendance.new
    @attendance = Attendance.new(:class_date => params[:class_date], :student_id => params[:student_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendance }
    end
  end

  # GET /attendances/1/edit
  def edit
    @attendance = Attendance.find(params[:id])
  end

  # POST /attendances
  # POST /attendances.xml
  def create
    @attendance = Attendance.new(params[:attendance])

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to(@attendance, :notice => 'Attendance was successfully created.') }
        format.xml  { render :xml => @attendance, :status => :created, :location => @attendance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendances/1
  # PUT /attendances/1.xml
  def update
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      if @attendance.update_attributes(params[:attendance])
        format.html { redirect_to(@attendance, :notice => 'Attendance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

#  # PUT method
#  # Update via editable_field
#  def update
#    @attendance = Attendance.find(params[:id])
#    @attendance.update_attributes!(params[:attendance])
#
#    format.html {
#      if request.xhr?
#        # *** respond with the new value ***
#        render :text => params[:attendance].values.first
#      else
#        redirect_to(@attendance, :notice => 'Attendance was successfully updated.')
#      end
#      }
#  end

  # DELETE /attendances/1
  # DELETE /attendances/1.xml
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy

    respond_to do |format|
      format.html { redirect_to(attendances_url) }
      format.xml  { head :ok }
    end
  end
end

