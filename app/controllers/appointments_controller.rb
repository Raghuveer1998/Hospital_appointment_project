class AppointmentsController < ApplicationController
   def create
    @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.create(comment_params)
    redirect_to patient_path(@patient)
  end

  private
    def comment_params
      params.require(:appointment).permit(:date,:patient_id , :doctor_id)
    end
  
end

