class AddAns53Ans54ToFiro < ActiveRecord::Migration[6.0]
  def change
    add_column :firos, :ans53, :integer
    add_column :firos, :ans54, :integer
  end
end
