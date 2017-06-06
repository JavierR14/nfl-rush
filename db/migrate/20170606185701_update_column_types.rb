class UpdateColumnTypes < ActiveRecord::Migration[5.1]
  def change
    change_column(:rushes, :att_per_g, :float)
    change_column(:rushes, :avg, :float)
    change_column(:rushes, :yds_per_g, :float)
    change_column(:rushes, :first_percent, :float)
  end
end
