json.array!(@speed_records) do |speed_record|
  json.extract! speed_record, :id, :ip_address, :download_speed, :upload_speed, :latency, :jitter, :hostname
  json.url speed_record_url(speed_record, format: :json)
end
