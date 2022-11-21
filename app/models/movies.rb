class Movie < ActiveRecord::Base
    belongs_to :directors
    has_many :monsters
end