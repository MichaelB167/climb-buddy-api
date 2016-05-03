  TOKEN='BAhJIiU1ZWNjODEwNzdlOWY4OTY1MTllY2M4YWY1NWNhYzVjNAY6BkVG--43db99a12158360beab14fc56076fca42ba4bf9e'
  curl --include --request GET http://localhost:3000/climbs/ \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \

#test
