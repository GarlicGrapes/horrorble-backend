class Monsters < ActiveRecord::Base
    belongs_to :movie
    belongs_to :director, through: :movie
end