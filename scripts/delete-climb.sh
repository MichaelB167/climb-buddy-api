TOKEN=''
curl --include --request DELETE http://localhost:3000/climbs/1 \
  --header "Authorization: Token token=$TOKEN" \
