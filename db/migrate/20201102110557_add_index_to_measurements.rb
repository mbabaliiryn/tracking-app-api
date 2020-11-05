class AddIndexToMeasurements < ActiveRecord::Migration[6.0]
  def change
    add_column :measurements, :activitiy_id, :integer
    add_index :measurements, :activitiy_id
  end
end
