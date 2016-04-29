curl --include --request POST http://localhost:3000/gyms \
  --header "Authorization: Token token=BAhJIiUyMDgwMDk5OGIwYWU3OGI1NTQ0NzllOGEwMGIwNTAxMwY6BkVG--b54504104a0b133fd44ef7cdd5573afad25cfdae" \
  --header "Content-Type: application/json" \
  --data '{
    "gyms": {
      "name": "Central Rock",
      "location": "Watertown",
      "date_visited": "2016-4-20",
      "gym_id": "1"
    }
  }'
