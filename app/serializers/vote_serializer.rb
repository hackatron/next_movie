class VoteSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :movie_id
  has_one :movie
end