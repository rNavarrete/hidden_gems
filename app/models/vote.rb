class Vote < ActiveRecord::Base
	belongs_to :users
	belongs_to :videos
    validates :user_id, :uniqueness => { :scope => :video_id }

end
