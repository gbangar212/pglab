class CreateFiros < ActiveRecord::Migration[6.0]
  def change
    create_table :firos do |t|
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
      t.integer :ans13
      t.integer :ans14
      t.integer :ans15
      t.integer :ans16
      t.integer :ans17
      t.integer :ans18
      t.integer :ans19
      t.integer :ans20
      t.integer :ans21
      t.integer :ans22
      t.integer :ans23
      t.integer :ans24
      t.integer :ans25
      t.integer :ans26
      t.integer :ans27
      t.integer :ans28
      t.integer :ans29
      t.integer :ans30
      t.integer :ans31
      t.integer :ans32
      t.integer :ans33
      t.integer :ans34
      t.integer :ans35
      t.integer :ans36
      t.integer :ans37
      t.integer :ans38
      t.integer :ans39
      t.integer :ans40
      t.integer :ans41
      t.integer :ans42
      t.integer :ans43
      t.integer :ans44
      t.integer :ans45
      t.integer :ans46
      t.integer :ans47
      t.integer :ans48
      t.integer :ans49
      t.integer :ans50
      t.integer :ans51
      t.integer :ans52

      t.timestamps
    end
  end
end
