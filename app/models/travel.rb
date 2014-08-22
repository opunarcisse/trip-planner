class Travel < ActiveRecord::Base

 validates :travel_from, :travelling_to, :travel_code, :number_of_seats, presence: true
end
