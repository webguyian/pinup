class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { in: 2..200 }
end
