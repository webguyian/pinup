class Pin < ActiveRecord::Base
  attr_accessible :description

  belongs_to :user

  validates :description, presence: true, length: { in: 2..200 }
  validates :user_id, presence: true

end
