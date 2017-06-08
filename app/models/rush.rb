class Rush < ApplicationRecord

  def self.to_csv(options = {})
    CSV.generate(headers: true) do |csv|
      csv.add_row column_names
      all.each do |rush|
        values = rush.attributes.values
        csv.add_row values
      end
    end
  end

  def self.search(player)
    where('player LIKE ?', "%#{player}%") || nil
  end
end
