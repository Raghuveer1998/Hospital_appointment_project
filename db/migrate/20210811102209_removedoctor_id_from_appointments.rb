class RemovedoctorIdFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :doctor_id
    remove_column :appointments, :patient_id
  end
end
