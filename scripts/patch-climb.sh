  TOKEN='BAhJIiU5MGQxYWIyYzJlNjFjOTI3NjgzOTcyZGNmZDc2ODU3ZAY6BkVG--b93cfba17db6569d7ecefb974ebfb0d9d8db25c1'
  ID='28'
  curl --include --request PATCH http://localhost:3000/climbs/$ID \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "climb": {
        "route_type": "Lead",
        "route_grade": "9",
        "hold_type_of_fall": "Sloper",
        "fall_notes": "Foot cut"
      }
    }'
