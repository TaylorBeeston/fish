function testIt
    curl 'http://localhost:4000/graphql' \
  -H 'Connection: keep-alive' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"' \
  -H 'apollographql-client-name: web: localhost:3000' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJGUnhZWWdvYWF4NmZNYmVHdiIsImlzcyI6Imh0dHBzOi8vYXBpLnN0YWdpbmcud2VsaWJyYXJ5LmlvLyIsImF1ZCI6WyJzdGFnaW5nIiwibG9jYWxob3N0IiwiZDBlOTJkNWEtNmYxOS00YzQxLTk1MGUtMTEzMmM5YTJhOTdlIiwibG9jYWwtbmF0aGFuIiwic3RhZ2luZy13ZWxpYnJhcnkiXSwiaWF0IjoxNjQ2MjAzNTA0LCJleHAiOjE2NzUzNjYzOTh9.je1IjQncMPDZGFccv7kqXczZgP7xo9zBs10zK-S2oCrs4_4qcgNuEphAphGMkVN4wG0PijzNz9fxi9FTp1OqF2tNvt9jR6hR1Pj1gdLu-alG4rLgWQ_Jpfr8iamyYkAmjdivb6ASfpygKxZ5VpjB70c7y0nS593lN-FusIOkvCYx1d4AOtXYcKZyxnXDIkXKWnV--mn4E_bdiPBHdK94hOn0lRXJHfRMK-HJXNPkmG6z-fdVueKS51SEcliWhW-NJcP1Fx1wN74d7-SsFZQnbILGQhSLOv0WFoI1Cv37mMezi88gLHSw9ZVNqN6gs5tR47-J3yg0DP4k7jby-zGzRg' \
  -H 'content-type: application/json' \
  -H 'accept: */*' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36' \
  -H 'apollographql-client-version: 4.15.0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'Origin: http://localhost:3000' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: http://localhost:3000/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --data-raw '{"operationName":"GetStripeCustomer","variables":{"stripeId":"cus_L9FqVrWQJXTrMG"},"extensions":{"persistedQuery":{"version":1,"sha256Hash":"aa1c9d7fc4d198943922888383da7eceb3a422023c8d0f869d80c22b984743b2"}},"query":"query GetStripeCustomer($stripeId: ID\u0021) {\\n  getStripeCustomer(stripeId: $stripeId) {\\n    id\\n    description\\n    email\\n    name\\n    phone\\n    livemode\\n    delinquent\\n    currency\\n    created\\n    balance\\n    default_source\\n    __typename\\n  }\\n}\\n"}' \
  --compressed
end
