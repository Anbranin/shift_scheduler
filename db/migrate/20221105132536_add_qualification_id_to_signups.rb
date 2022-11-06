class AddQualificationIdToSignups < ActiveRecord::Migration[7.0]
  def change
    add_column :signups, :qualification_id, :integer
  end
end
