class Company < ApplicationRecord
  has_many :beers

  validates :name, presence: true
end
