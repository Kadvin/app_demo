# 
# = Sample Model: Tag
# Tag was tagged to some topics
#
class Tag < ActiveRecord::Base
  has_many :topic_tags, :dependent => :destroy
  has_many :topics, :through => :topic_tags
end
