class CreateEcassessments < ActiveRecord::Migration[6.0]
  def change
    create_table :ecassessments do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :ans1
      t.integer :ans2
      t.integer :ans3
      t.integer :ans4
      t.integer :ans5
      t.integer :ans6
      t.integer :ans7
      t.integer :ans8
      t.integer :ans9
      t.integer :ans10
      t.integer :ans11
      t.integer :ans12

      t.timestamps
    end
  end
end
