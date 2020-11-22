class CreateMbtinewscores < ActiveRecord::Migration[6.0]
  def change
    create_table :mbtinewscores do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :scorei
      t.integer :scoree
      t.integer :scoren
      t.integer :scores
      t.integer :scoret
      t.integer :scoref
      t.integer :scorep
      t.integer :scorej

      t.timestamps
    end
  end
end
