TOKEN=''
curl --include --request PATCH http://localhost:3000/climbs/1 \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "climbs": {
      "route_type": "Lead",
      "route_grade": "Watertown",
      "hold_type_of_fall": "Sloper",
      "fall_notes": "Foot cut"
    }
  }'
