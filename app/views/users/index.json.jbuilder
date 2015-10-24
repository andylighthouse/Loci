json.array! @users do |user|

  json.lat user._source.latitude
  json.lng user._source.longitude
end
