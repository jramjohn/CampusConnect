class AcceptedJobsController < ApplicationController
  before_action :set_accepted_job, only: [:show, :edit, :update, :destroy]

  # GET /accepted_jobs
  # GET /accepted_jobs.json
  def index
    @accepted_jobs = AcceptedJob.all
  end

  # GET /accepted_jobs/1
  # GET /accepted_jobs/1.json
  def show
  end

  # GET /accepted_jobs/new
  def new
    @accepted_job = AcceptedJob.new
  end

  # GET /accepted_jobs/1/edit
  def edit
  end

  # POST /accepted_jobs
  # POST /accepted_jobs.json
  def create
    @accepted_job = AcceptedJob.new(accepted_job_params)

    respond_to do |format|
      if @accepted_job.save
        format.html { redirect_to @accepted_job, notice: 'Accepted job was successfully created.' }
        format.json { render :show, status: :created, location: @accepted_job }
      else
        format.html { render :new }
        format.json { render json: @accepted_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accepted_jobs/1
  # PATCH/PUT /accepted_jobs/1.json
  def update
    respond_to do |format|
      if @accepted_job.update(accepted_job_params)
        format.html { redirect_to @accepted_job, notice: 'Accepted job was successfully updated.' }
        format.json { render :show, status: :ok, location: @accepted_job }
      else
        format.html { render :edit }
        format.json { render json: @accepted_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accepted_jobs/1
  # DELETE /accepted_jobs/1.json
  def destroy
    @accepted_job.destroy
    respond_to do |format|
      format.html { redirect_to accepted_jobs_url, notice: 'Accepted job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accepted_job
      @accepted_job = AcceptedJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accepted_job_params
      params.require(:accepted_job).permit(:job_posting_id, :asking_price_id, :completed, :seller_review, :buyer_review, :seller_rating, :buyer_rating)
    end
end