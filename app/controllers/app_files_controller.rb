class AppFilesController < ApplicationController
  # GET /app_files
  # GET /app_files.json
  def index
    @app_files = AppFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_files }
    end
  end

  # GET /app_files/1
  # GET /app_files/1.json
  def show
    @app_file = AppFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_file }
    end
  end

  # GET /app_files/new
  # GET /app_files/new.json
  def new
    @app_file = AppFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_file }
    end
  end

  # GET /app_files/1/edit
  def edit
    @app_file = AppFile.find(params[:id])
  end

  # POST /app_files
  # POST /app_files.json
  def create
    @app_file = AppFile.new(params[:app_file])

    respond_to do |format|
      if @app_file.save
        format.html { redirect_to @app_file, notice: 'App file was successfully created.' }
        format.json { render json: @app_file, status: :created, location: @app_file }
      else
        format.html { render action: "new" }
        format.json { render json: @app_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_files/1
  # PUT /app_files/1.json
  def update
    @app_file = AppFile.find(params[:id])

    respond_to do |format|
      if @app_file.update_attributes(params[:app_file])
        format.html { redirect_to @app_file, notice: 'App file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_files/1
  # DELETE /app_files/1.json
  def destroy
    @app_file = AppFile.find(params[:id])
    @app_file.destroy

    respond_to do |format|
      format.html { redirect_to app_files_url }
      format.json { head :no_content }
    end
  end
end
