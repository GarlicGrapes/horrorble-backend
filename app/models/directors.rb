class Director < ActiveRecord::Base
    has_many :movies
    # has_many :monsters, through: :movie
end