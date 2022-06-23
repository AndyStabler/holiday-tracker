class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.integer :allowance
      t.boolean :can_approve_time_off

      t.timestamps
    end
  end
end
