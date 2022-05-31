class CreatePlanvitals < ActiveRecord::Migration[7.0]
  def change
    create_table :planvitals do |t|
      t.string :date
      t.string :fundA
      t.string :fundC
      t.string :fundE

      t.timestamps
    end
  end
end
