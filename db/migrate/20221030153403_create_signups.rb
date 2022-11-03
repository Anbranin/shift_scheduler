class CreateSignups < ActiveRecord::Migration[7.0]
  def change
    create_table :signups do |t|
      t.integer :shift_id
      t.integer :user_id

      t.timestamps
    end
  end
end
