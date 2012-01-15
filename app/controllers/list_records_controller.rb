class ListRecordsController < ApplicationController
  # GET /list_records
  # GET /list_records.xml
  def index
    @list_records = ListRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @list_records }
    end
  end

  # GET /list_records/1
  # GET /list_records/1.xml
  def show
    @list_record = ListRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @list_record }
    end
  end

  # GET /list_records/new
  # GET /list_records/new.xml
  def new
    @list_record = ListRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @list_record }
    end
  end

  # GET /list_records/1/edit
  def edit
    @list_record = ListRecord.find(params[:id])
  end

  # POST /list_records
  # POST /list_records.xml
  def create
    @list_record = ListRecord.new(params[:list_record])

    respond_to do |format|
      if @list_record.save
        format.html { redirect_to(@list_record, :notice => 'List record was successfully created.') }
        format.xml  { render :xml => @list_record, :status => :created, :location => @list_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @list_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /list_records/1
  # PUT /list_records/1.xml
  def update
    @list_record = ListRecord.find(params[:id])

    respond_to do |format|
      if @list_record.update_attributes(params[:list_record])
        format.html { redirect_to(@list_record, :notice => 'List record was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @list_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /list_records/1
  # DELETE /list_records/1.xml
  def destroy
    @list_record = ListRecord.find(params[:id])
    @list_record.destroy

    respond_to do |format|
      format.html { redirect_to(list_records_url) }
      format.xml  { head :ok }
    end
  end
end
