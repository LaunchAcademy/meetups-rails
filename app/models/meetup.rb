class Meetup < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true,
    length: {is: 2}

  def location
    "#{self.city}, #{self.state}"
  end
end