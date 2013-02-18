class NamespaceMethodsController < ApplicationController
  # GET /namespace_methods
  # GET /namespace_methods.json
  def index
    @namespace_methods = NamespaceMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @namespace_methods }
    end
  end

  # GET /namespace_methods/1
  # GET /namespace_methods/1.json
  def show
    @namespace_method = NamespaceMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @namespace_method }
    end
  end

  # GET /namespace_methods/new
  # GET /namespace_methods/new.json
  def new
    @namespace_method = NamespaceMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @namespace_method }
    end
  end

  # GET /namespace_methods/1/edit
  def edit
    @namespace_method = NamespaceMethod.find(params[:id])
  end

  # POST /namespace_methods
  # POST /namespace_methods.json
  def create
    @namespace_method = NamespaceMethod.new(params[:namespace_method])

    respond_to do |format|
      if @namespace_method.save
        format.html { redirect_to @namespace_method, notice: 'Namespace method was successfully created.' }
        format.json { render json: @namespace_method, status: :created, location: @namespace_method }
      else
        format.html { render action: "new" }
        format.json { render json: @namespace_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /namespace_methods/1
  # PUT /namespace_methods/1.json
  def update
    @namespace_method = NamespaceMethod.find(params[:id])

    respond_to do |format|
      if @namespace_method.update_attributes(params[:namespace_method])
        format.html { redirect_to @namespace_method, notice: 'Namespace method was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @namespace_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /namespace_methods/1
  # DELETE /namespace_methods/1.json
  def destroy
    @namespace_method = NamespaceMethod.find(params[:id])
    @namespace_method.destroy

    respond_to do |format|
      format.html { redirect_to namespace_methods_url }
      format.json { head :no_content }
    end
  end
end
