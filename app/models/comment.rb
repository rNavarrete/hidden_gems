class Comment < ActiveRecord::Base
  attr_accessor :text
  belongs_to :user
  belongs_to :video
end
