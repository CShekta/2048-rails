class Game < ActiveRecord::Base
  belongs_to :user
  serialize :game, JSON
end
