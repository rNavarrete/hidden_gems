class Video < ActiveRecord::Base
  belongs_to :users
  has_many :votes
  self.per_page = 20
  has_many :comments
end
