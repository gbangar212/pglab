class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :roll
      t.string :name
      t.string :entry
      t.string :spec

      t.timestamps
    end
  end
end
