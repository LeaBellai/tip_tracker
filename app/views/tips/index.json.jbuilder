json.array!(@tips) do |tip|
  json.extract! tip, :id, :start_date, :end_date, :monday_amount, :tuesday_amount, :wednesday_amount, :thursday_amount, :friday_amount, :saturday_amount, :sunday_amount
  json.url tip_url(tip, format: :json)
end
