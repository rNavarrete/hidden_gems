class Vote < ActiveRecord::Base
	belongs_to :users
    validates :user_id, :uniqueness => { :scope => :video_id }

end
