class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :price, presence: true
  validates :photo_url, presence: true

  belongs_to :author
end
