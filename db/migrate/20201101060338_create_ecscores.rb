class CreateEcscores < ActiveRecord::Migration[6.0]
  def change
    create_table :ecscores do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :awareness
      t.integer :control
      t.integer :diagnosis
      t.integer :response
      t.integer :total

      t.timestamps
    end
  end
end
