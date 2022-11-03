class CreateCredentials < ActiveRecord::Migration[7.0]
  def change
    create_table :credentials do |t|
      t.integer :user_id
      t.integer :qualification_id

      t.timestamps
    end
  end
end
