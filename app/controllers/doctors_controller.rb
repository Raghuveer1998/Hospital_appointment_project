class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end
  def show
    @doctor = Doctor.find(params[:id])
    end
	def create
    @patient = Patient.find(params[:patient_id])
    @doctor = @patient.doctors.create(comment_params)
    redirect_to patient_path(@patient)
  end

  private
    def comment_params
      params.require(:doctor).permit(:name, :specialist)
    end
end
