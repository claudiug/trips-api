class TripSerializer < ActiveModel::Serializer
  attributes :name, :slug, :description, :url, :info, :created_at, :category_name, :comment_name

  def url
    trip_url(object)
  end

  def info
    "#{name} - #{slug}"
  end

  def category_name
    object.category
  end

  def comment_name
    object.comment
  end

end
