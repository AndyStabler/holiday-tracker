class AddOrganisationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :organisation, null: false, foreign_key: true
  end
end


NOTE:
Add fixtures for objects. Then nuke/seed the DB
