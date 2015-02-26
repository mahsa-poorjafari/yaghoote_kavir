class GalleryGroupsController < ApplicationController
  before_action :set_gallery_group, only: [:show, :edit, :update, :destroy]

  # GET /gallery_groups
  # GET /gallery_groups.json
  def index
    @gallery_groups = GalleryGroup.all
  end

  # GET /gallery_groups/1
  # GET /gallery_groups/1.json
  def show
  end

  # GET /gallery_groups/new
  def new
    @gallery_group = GalleryGroup.new
  end

  # GET /gallery_groups/1/edit
  def edit
  end

  # POST /gallery_groups
  # POST /gallery_groups.json
  def create
    @gallery_group = GalleryGroup.new(gallery_group_params)

    respond_to do |format|
      if @gallery_group.save
        format.html { redirect_to @gallery_group, notice: 'Gallery group was successfully created.' }
        format.json { render :show, status: :created, location: @gallery_group }
      else
        format.html { render :new }
        format.json { render json: @gallery_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallery_groups/1
  # PATCH/PUT /gallery_groups/1.json
  def update
    respond_to do |format|
      if @gallery_group.update(gallery_group_params)
        format.html { redirect_to @gallery_group, notice: 'Gallery group was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallery_group }
      else
        format.html { render :edit }
        format.json { render json: @gallery_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_groups/1
  # DELETE /gallery_groups/1.json
  def destroy
    @gallery_group.destroy
    respond_to do |format|
      format.html { redirect_to gallery_groups_url, notice: 'Gallery group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_group
      @gallery_group = GalleryGroup.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_group_params
      params.require(:gallery_group).permit(:title)
    end
end
