class CreateMbtiscores < ActiveRecord::Migration[6.0]
  def change
    create_table :mbtiscores do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :ie
      t.integer :ns
      t.integer :tf
      t.integer :pj

      t.timestamps
    end
  end
end
