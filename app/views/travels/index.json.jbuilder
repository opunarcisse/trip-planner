json.array!(@travels) do |travel|
  json.extract! travel, :id, :date_of_travel, :time_of_travel, :travel_from, :travelling_to, :travel_code, :travel_mode, :number_of_seats, :bus_details, :remarks_and_conditions, :travel_agency
  json.url travel_url(travel, format: :json)
end
