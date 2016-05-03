    TOKEN='BAhJIiU5NDU3ODBkMjliMDAxZjM3OWI2ODBhYzVlM2E5OTZlNwY6BkVG--af3044b436eb5361df3669c71a2578fd4a152040'
    ID='34'
    curl --include --request DELETE http://localhost:3000/climbs/$ID \
      --header "Authorization: Token token=$TOKEN" \
