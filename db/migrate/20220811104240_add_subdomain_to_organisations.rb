class AddSubdomainToOrganisations < ActiveRecord::Migration[7.0]
  def change
    add_column :organisations, :subdomain, :string, index: true, null: false
  end
end
