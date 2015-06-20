class PatientSummariesController < ApplicationController
  before_action :set_patient_summary, only: [:show, :edit, :update, :destroy]

  # GET /patient_summaries
  # GET /patient_summaries.json
  def index
    @patient_summaries = PatientSummary.all
  end

  # GET /patient_summaries/1
  # GET /patient_summaries/1.json
  def show
  end

  # GET /patient_summaries/new
  def new
    @patient_summary = PatientSummary.new
  end

  # GET /patient_summaries/1/edit
  def edit
  end

  # POST /patient_summaries
  # POST /patient_summaries.json
  def create
    @patient_summary = PatientSummary.new(patient_summary_params)

    respond_to do |format|
      if @patient_summary.save
        format.html { redirect_to @patient_summary, notice: 'Patient summary was successfully created.' }
        format.json { render :show, status: :created, location: @patient_summary }
      else
        format.html { render :new }
        format.json { render json: @patient_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_summaries/1
  # PATCH/PUT /patient_summaries/1.json
  def update
    respond_to do |format|
      if @patient_summary.update(patient_summary_params)
        format.html { redirect_to @patient_summary, notice: 'Patient summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_summary }
      else
        format.html { render :edit }
        format.json { render json: @patient_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_summaries/1
  # DELETE /patient_summaries/1.json
  def destroy
    @patient_summary.destroy
    respond_to do |format|
      format.html { redirect_to patient_summaries_url, notice: 'Patient summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_summary
      @patient_summary = PatientSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_summary_params
      params[:patient_summary]
    end
end
