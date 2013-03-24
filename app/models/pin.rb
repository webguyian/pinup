class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  belongs_to :user
  has_attached_file :image, styles: { thumb: "100x", medium: "250x", large: "500x" }

  validates :description, presence: true, length: { in: 2..200 }
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  										content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  										size: { less_than: 5.megabytes}

end
