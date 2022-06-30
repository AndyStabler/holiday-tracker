class CreateTimeOffs < ActiveRecord::Migration[7.0]
  def change
    create_table :time_offs do |t|
      t.date :date
      t.boolean :morning
      t.boolean :afternoon
      t.string :more_info
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
