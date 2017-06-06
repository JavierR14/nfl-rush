class CreateRushes < ActiveRecord::Migration[5.1]
  def change
    create_table :rushes do |t|
      t.string :player
      t.string :team
      t.string :pos
      t.integer :att
      t.integer :att_per_g
      t.integer :yds
      t.integer :avg
      t.integer :yds_per_g
      t.integer :td
      t.string :lng
      t.integer :first
      t.integer :first_percent
      t.integer :twenty_plus
      t.integer :forty_plus
      t.integer :fum

      t.timestamps
    end
  end
end
