class GrievancesController < ApplicationController
  before_action :set_grievance, only: [:show, :edit, :update, :destroy]

  # GET /grievances
  # GET /grievances.json
  def index
    @grievances = Grievance.all
  end

  # GET /grievances/1
  # GET /grievances/1.json
  def show
  end

  # GET /grievances/new
  def new
    @grievance = Grievance.new
  end

  # GET /grievances/1/edit
  def edit
  end

  # POST /grievances
  # POST /grievances.json
  def create
    @grievance = Grievance.new(grievance_params)

    respond_to do |format|
      if @grievance.save
        format.html { redirect_to @grievance, notice: 'Grievance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grievance }
      else
        format.html { render action: 'new' }
        format.json { render json: @grievance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grievances/1
  # PATCH/PUT /grievances/1.json
  def update
    respond_to do |format|
      if @grievance.update(grievance_params)
        format.html { redirect_to @grievance, notice: 'Grievance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grievance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grievances/1
  # DELETE /grievances/1.json
  def destroy
    @grievance.destroy
    respond_to do |format|
      format.html { redirect_to grievances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grievance
      @grievance = Grievance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grievance_params
      params.require(:grievance).permit(:content, :ups, :downs)
    end
end
