class Olympicmedal < ActiveRecord::Base
    validates :athlete_name,    presence: true
	validates :country,  presence: true
    validates :medal_type, :inclusion => { :in => ["Gold", "Silver", "Bronze"] }

end
