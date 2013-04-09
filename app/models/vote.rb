class Vote
  include Mongoid::Document

  belongs_to :movie, counter_cache: true
end