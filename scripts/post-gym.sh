curl --include --request POST http://localhost:3000/stores/1/gyms \
  --header "Authorization: Token token=" \
  --header "Content-Type: application/json" \
  --data '{
    "gyms": {
      "name": "Central Rock",
      "location": "Watertown",
      "date_visited": "2016-4-20",
      "gym_id": "1"
    }
  }'
