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

  TOKEN='BAhJIiU1ZWNjODEwNzdlOWY4OTY1MTllY2M4YWY1NWNhYzVjNAY6BkVG--43db99a12158360beab14fc56076fca42ba4bf9e'
  curl --include --request PATCH http://localhost:3000/climbs/10 \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "climbs": {
        "route_type": "Lead",
        "route_grade": "9",
        "hold_type_of_fall": "Sloper",
        "fall_notes": "Foot cut"
      }
    }'
