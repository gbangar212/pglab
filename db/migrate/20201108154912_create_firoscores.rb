class CreateFiroscores < ActiveRecord::Migration[6.0]
  def change
    create_table :firoscores do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :ei
      t.integer :ec
      t.integer :ea
      t.integer :wi
      t.integer :wc
      t.integer :wa

      t.timestamps
    end
  end
end
