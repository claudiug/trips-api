class AddCommentIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :comment_id, :integer
  end
end
