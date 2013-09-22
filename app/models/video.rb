class Video < ActiveRecord::Base
  belongs_to :users
  has_many :votes
end
