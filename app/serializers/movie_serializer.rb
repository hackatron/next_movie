class MovieSerializer < ActiveModel::Serializer
  attributes :title, :rating

  def rating
    try(:votes_count) || 0
  end
end
