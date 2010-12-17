# 
# == Sample Model: Post
# Post means a lots of sub-articles in the topic
#
class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :topic
end
