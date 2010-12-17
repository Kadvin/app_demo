#
# = Sample Model: Author
# The author of a topic or a post
#
class Author < ActiveRecord::Base
  has_many :topics
  has_many :posts
end
