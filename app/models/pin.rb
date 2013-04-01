class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_file_name, :remote_image_url

  belongs_to :user
  has_attached_file :image, styles: { thumb: "200x", medium: "350x", large: "500x" }

  validates :description, presence: true, length: { in: 2..200 }
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  										content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  										size: { less_than: 5.megabytes}

  def remote_image_url=(url_value)
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
  	
  end

end
