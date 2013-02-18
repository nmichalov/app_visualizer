class AppDirectoryNodesController < ApplicationController
  # GET /app_directory_nodes
  # GET /app_directory_nodes.json
  def index
    @app_directory_nodes = AppDirectoryNode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_directory_nodes }
    end
  end

  # GET /app_directory_nodes/1
  # GET /app_directory_nodes/1.json
  def show
    @app_directory_node = AppDirectoryNode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_directory_node }
    end
  end

  # GET /app_directory_nodes/new
  # GET /app_directory_nodes/new.json
  def new
    @app_directory_node = AppDirectoryNode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_directory_node }
    end
  end

  # GET /app_directory_nodes/1/edit
  def edit
    @app_directory_node = AppDirectoryNode.find(params[:id])
  end

  # POST /app_directory_nodes
  # POST /app_directory_nodes.json
  def create
    @app_directory_node = AppDirectoryNode.new(params[:app_directory_node])

    respond_to do |format|
      if @app_directory_node.save
        format.html { redirect_to @app_directory_node, notice: 'App directory node was successfully created.' }
        format.json { render json: @app_directory_node, status: :created, location: @app_directory_node }
      else
        format.html { render action: "new" }
        format.json { render json: @app_directory_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_directory_nodes/1
  # PUT /app_directory_nodes/1.json
  def update
    @app_directory_node = AppDirectoryNode.find(params[:id])

    respond_to do |format|
      if @app_directory_node.update_attributes(params[:app_directory_node])
        format.html { redirect_to @app_directory_node, notice: 'App directory node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_directory_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_directory_nodes/1
  # DELETE /app_directory_nodes/1.json
  def destroy
    @app_directory_node = AppDirectoryNode.find(params[:id])
    @app_directory_node.destroy

    respond_to do |format|
      format.html { redirect_to app_directory_nodes_url }
      format.json { head :no_content }
    end
  end
end
