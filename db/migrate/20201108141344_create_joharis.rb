class CreateJoharis < ActiveRecord::Migration[6.0]
  def change
    create_table :joharis do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :ans1a
      t.integer :ans1b
      t.integer :ans2a
      t.integer :ans2b
      t.integer :ans3a
      t.integer :ans3b
      t.integer :ans4a
      t.integer :ans4b
      t.integer :ans5a
      t.integer :ans5b
      t.integer :ans6a
      t.integer :ans6b
      t.integer :ans7a
      t.integer :ans7b
      t.integer :ans8a
      t.integer :ans8b
      t.integer :ans9a
      t.integer :ans9b
      t.integer :ans10a
      t.integer :ans10b
      t.integer :ans11a
      t.integer :ans11b
      t.integer :ans12a
      t.integer :ans12b
      t.integer :ans13a
      t.integer :ans13b
      t.integer :ans14a
      t.integer :ans14b
      t.integer :ans15a
      t.integer :ans15b
      t.integer :ans16a
      t.integer :ans16b
      t.integer :ans17a
      t.integer :ans17b
      t.integer :ans18a
      t.integer :ans18b
      t.integer :ans19a
      t.integer :ans19b
      t.integer :ans20a
      t.integer :ans20b

      t.timestamps
    end
  end
end
