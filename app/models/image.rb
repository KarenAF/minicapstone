class Image < ActiveRecord::Base
  belongs_to :fruit

  validates :url, presence: true
end
