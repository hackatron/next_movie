class Movie
  include Mongoid::Document

  field :title, type: String
  field :selected, type: Boolean, default: false
  has_many :votes

  def rating
    try(:votes_count) || 0
  end
end