class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email_address, null: false
      t.integer :allowance, null: false
      t.boolean :can_approve_time_off, null: false
      t.boolean :admin, null: false
      t.string :password_digest, null: false
      t.references :organisation, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
