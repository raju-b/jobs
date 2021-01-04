class JobsController < ApplicationController

	def index
		@jobs = Job.order(:created_at)
	end

	def filter
		@jobs = Job.order(:created_at)
		@jobs = @jobs.where("skills @> array[?]", [params[:skills]]) if params[:skills].present?
		@jobs = @jobs.where("title iLIKE ANY ( array[?] )", params[:titles]) if params[:titles].present?
		@jobs =  @jobs.where("country iLIKE ANY ( array[?] )", params[:country]) if params[:country].present?
		respond_to do |format|
			format.js { render partial: "jobs" }
		end
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
		if @job.save
			redirect_to jobs_path
		else
			render :new
		end
	end

	private
	def job_params
		params.require(:job).permit(:title, :company_name, :url, :country, :state, :city, :description, :information, skills: [])
	end
end
