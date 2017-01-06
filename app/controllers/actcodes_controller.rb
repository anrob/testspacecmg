class ActcodesController < ApplicationController
  before_action :set_actcode, only: [:show, :edit, :update, :destroy]

  # GET /actcodes
  # GET /actcodes.json
  def index
    @actcodes = Actcode.all
  end

  # GET /actcodes/1
  # GET /actcodes/1.json
  def show
  end

  # GET /actcodes/new
  def new
    @actcode = Actcode.new
  end

  # GET /actcodes/1/edit
  def edit
  end

  # POST /actcodes
  # POST /actcodes.json
  def create
    @actcode = Actcode.new(actcode_params)

    respond_to do |format|
      if @actcode.save
        format.html { redirect_to @actcode, notice: 'Actcode was successfully created.' }
        format.json { render :show, status: :created, location: @actcode }
      else
        format.html { render :new }
        format.json { render json: @actcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actcodes/1
  # PATCH/PUT /actcodes/1.json
  def update
    respond_to do |format|
      if @actcode.update(actcode_params)
        format.html { redirect_to @actcode, notice: 'Actcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @actcode }
      else
        format.html { render :edit }
        format.json { render json: @actcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actcodes/1
  # DELETE /actcodes/1.json
  def destroy
    @actcode.destroy
    respond_to do |format|
      format.html { redirect_to actcodes_url, notice: 'Actcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actcode
      @actcode = Actcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actcode_params
      params.require(:actcode).permit(:actcode, :management_id, :description, :user_id)
    end
end
