class CreateOrganisation < ActiveRecord::Migration[7.0]
  def change
    create_table :organisations do |t|
      t.string :name, null: false
      t.string :subdomain, null: false, unique: true, index: true
      t.datetime :activated_at

      t.timestamps
    end
  end
end
