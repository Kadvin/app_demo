# 
# = Sample Model: TopicTag
# An intermedia model between Topic and Tag
#
class TopicTag < ActiveRecord::Base
  belongs_to :topic
  belongs_to :tag
end
