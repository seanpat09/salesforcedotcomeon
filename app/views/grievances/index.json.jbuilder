json.array!(@grievances) do |grievance|
  json.extract! grievance, :content, :ups, :downs
  json.url grievance_url(grievance, format: :json)
end