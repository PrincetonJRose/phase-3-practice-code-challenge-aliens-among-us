class Alien < ActiveRecord::Base

    has_many :visitations
    has_many :earthlings, through: :visitations

    def visit earthling
        Visitation.create(alien: self, earthling: earthling, date: Time.now.to_s.split.first)
    end

    def total_light_years_traveled
        ( light_years_to_home_planet * visitations.count ) * 2
    end

    def self.most_frequent_visitor
        all.max_by { |alien| alien.visitations.count  }
    end

    def self.average_light_years_to_home_planet
        # all.map { |alien| alien.light_years_to_home_planet }.sum / all.count
        average("light_years_to_home_planet").to_i
    end
end
