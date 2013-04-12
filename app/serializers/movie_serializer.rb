class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating
end
