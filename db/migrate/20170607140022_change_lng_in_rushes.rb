class ChangeLngInRushes < ActiveRecord::Migration[5.1]
  def change
    change_column(:rushes, :lng, :int)
  end
end
