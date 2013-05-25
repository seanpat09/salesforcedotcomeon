class GrievancesController < ApplicationController
  before_action :set_grievance, only: [:up, :down] 

  # GET /grievances
  # GET /grievances.json
  def index
    @grievances = Grievance.all
  end

  # GET /grievances/new
  def new
    @grievance = Grievance.new
  end

  # POST /grievances
  # POST /grievances.json
  def create
    @grievance = Grievance.new(grievance_params)

    respond_to do |format|
      if @grievance.save
        format.html { redirect_to :root, notice: 'Grievance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grievance }
      else
        format.html { render action: 'new' }
        format.json { render json: @grievance.errors, status: :unprocessable_entity }
      end
    end
  end

  def up
    @grievance = Grievance.find_by_id(params[:id])
    @grievance.ups += 1
    @grievance.save
    respond_to do |format|
      format.html {redirect_to :root}
      format.js
    end
  end

  def down
    @grievance.downs += 1
    @grievance.save
    respond_to do |format|
      format.html {redirect_to :root}
      format.js
    end
  end

  private
    def set_grievance
      @grievance = Grievance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grievance_params
      params.require(:grievance).permit(:content, :ups, :downs)
    end
end
