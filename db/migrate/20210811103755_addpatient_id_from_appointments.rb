class AddpatientIdFromAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :patient_id, :integer
  end
end
