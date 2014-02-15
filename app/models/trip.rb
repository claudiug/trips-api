class Trip < ActiveRecord::Base
  belongs_to :category
  belongs_to :comment

  def self.top
    where('created_at < ?', 6.days.ago)
  end
end
