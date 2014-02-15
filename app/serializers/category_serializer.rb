class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :trips

  def trips
    object.trips
  end
end
