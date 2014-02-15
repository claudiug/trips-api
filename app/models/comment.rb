class Comment < ActiveRecord::Base
  has_many :trips
end
