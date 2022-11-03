class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t| 
      t.string :name
      t.integer :qualification_id

      t.timestamps
    end
  end
end
