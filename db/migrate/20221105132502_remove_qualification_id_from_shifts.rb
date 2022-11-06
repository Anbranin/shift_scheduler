class RemoveQualificationIdFromShifts < ActiveRecord::Migration[7.0]
  def change
    remove_column :shifts, :qualification_id, :integer
  end
end
