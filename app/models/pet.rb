class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'bird', 'snake', 'fish', 'crab']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - self.found_on).to_i
  end
end
