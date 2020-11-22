class CreateJohariscores < ActiveRecord::Migration[6.0]
  def change
    create_table :johariscores do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :askfeedback
      t.integer :givefeedback

      t.timestamps
    end
  end
end
