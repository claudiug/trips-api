class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :slug, :description
end
