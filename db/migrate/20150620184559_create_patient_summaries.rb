class CreatePatientSummaries < ActiveRecord::Migration
  def change
    create_table :patient_summaries do |t|

      t.timestamps
    end
  end
end
