class TripSerializer < ActiveModel::Serializer
  embed :name, include: true
  attributes :name, :slug, :description, :url, :info, :created_at

  def url
    trip_url(object)
  end

  def info
    "#{name} - #{slug}"
  end
end
