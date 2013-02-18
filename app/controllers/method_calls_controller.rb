class MethodCallsController < ApplicationController
  # GET /method_calls
  # GET /method_calls.json
  def index
    @method_calls = MethodCall.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @method_calls }
    end
  end

  # GET /method_calls/1
  # GET /method_calls/1.json
  def show
    @method_call = MethodCall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @method_call }
    end
  end

  # GET /method_calls/new
  # GET /method_calls/new.json
  def new
    @method_call = MethodCall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @method_call }
    end
  end

  # GET /method_calls/1/edit
  def edit
    @method_call = MethodCall.find(params[:id])
  end

  # POST /method_calls
  # POST /method_calls.json
  def create
    @method_call = MethodCall.new(params[:method_call])

    respond_to do |format|
      if @method_call.save
        format.html { redirect_to @method_call, notice: 'Method call was successfully created.' }
        format.json { render json: @method_call, status: :created, location: @method_call }
      else
        format.html { render action: "new" }
        format.json { render json: @method_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /method_calls/1
  # PUT /method_calls/1.json
  def update
    @method_call = MethodCall.find(params[:id])

    respond_to do |format|
      if @method_call.update_attributes(params[:method_call])
        format.html { redirect_to @method_call, notice: 'Method call was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @method_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_calls/1
  # DELETE /method_calls/1.json
  def destroy
    @method_call = MethodCall.find(params[:id])
    @method_call.destroy

    respond_to do |format|
      format.html { redirect_to method_calls_url }
      format.json { head :no_content }
    end
  end
end
