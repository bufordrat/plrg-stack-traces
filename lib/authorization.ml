open Authorization_error

let connect username =
  if username = "guest"
  then Ok (Token.token "abcdef123")
  else Error (bad_username username)
