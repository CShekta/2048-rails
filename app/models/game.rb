class Game < ActiveRecord::Base
  belong_to :user
  serialize :game, JSON
end
