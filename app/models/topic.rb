# 
# = Sample Model: Topic
# Topic represent an article, or a subject
#
class Topic < ActiveRecord::Base
  belongs_to :author
  has_many :posts, :dependent => :destroy
  has_many :topic_tags, :dependent => :destroy
  has_many :tags, :through => :topic_tags

  acts_as_enum :state, :new, :read, :approved
end
