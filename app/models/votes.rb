class Vote
  include Mongoid::Document
  belongs_to :movie
end